#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <sys/stat.h>
#include <osbind.h>

uint16_t *buf;
size_t fsize;

uint32_t base =0x00f80000;
//uint32_t base =0x00c80000;

uint32_t e_add[] = { 0x555,  0x2aa,  0x555,  0x555,  0x2aa,  0x555 };
uint16_t e_dat[] =  { 0xaa,   0x55,   0x80,   0xaa,   0x55,   0x10 };

uint32_t w_add[] = { 0x555,  0x2aa,  0x555 };
uint16_t w_dat[] =  { 0xaa,   0x55,   0xa0 };


void cacheoff() {

    // move d0 to CACR
    // .dc.l 0x4e7b0002    
    __asm__ volatile (
        "moveq.l #0,d0\n\t"
        "dc.l 0x4e7b0002\n"
    );
}

void erase() {
  uint16_t* ptr;
  int i;

  for( i = 0 ; i < 6 ; i++ ) {
    ptr = (uint16_t*)(base+(e_add[i]<<1));
    *ptr = e_dat[i];
  }
}

void program() {
  uint16_t *ptr;
  uint32_t target_address;
  int i;
  size_t l;
  uint16_t val;
  int j;
  uint16_t *bufptr;

  for( l = 0x0000, bufptr = buf ; l < fsize ; l+=2 , bufptr++ ) {
    target_address = base+l;
    if( l > 0x1ffff )
      target_address -= 0x80000;

    for( i = 0 ; i < 3 ; i++ ) {
      ptr = (uint16_t*)(base+(w_add[i]<<1));
      *ptr = w_dat[i];
    }
    ptr = (int16_t*)target_address;

    val = *bufptr;
    *ptr = val;


    if( l % 0x4000 == 0 ) {
//    printf( "Programming %p with 0x%x\n", ptr, val );
      printf("\r");
      for( j = 0 ; j < fsize / 0x4000 -1 ; j++ ) {
        if( j < l/0x4000 )
          printf( "X" );
        else
          printf(".");
      }
      fflush(NULL);
    }

    // read it back for a delay
    val = *ptr;

  }
  printf("\n");
}

void verify() {
  uint16_t *ptr;
  uint32_t address;
  int i;
  size_t l;
  uint16_t val;
  uint16_t *bufptr;
  int j;

  for( l = 0x0000, bufptr = buf ; l < fsize  ; l+=2, bufptr++ ) {
    address = base+l;
    if( l > 0x1ffff )
      address -= 0x80000;

    ptr = (int16_t*)address;

    val = *ptr;
    if( val != *bufptr ) {
      fprintf( stderr, "\nError: (%p) %x != %x\n", ptr, val, buf[l] );
      exit(1);
    }

    if( l % 0x4000 == 0 ) {
      printf("\r");
      for( j = 0 ; j < fsize / 0x4000 -1 ; j++ ) {
        if( j < l/0x4000 )
          printf( "X" );
        else
          printf(".");
      }
      fflush(NULL);
    }
  }
  printf("\n");
}

int main( int argc, char *argv[] ) {

  FILE *fp;
  struct stat statbuf;
  size_t sizeread;

  if( argc < 2 ) {
      printf("Usage: %s <image_file_512k>\n", argv[0]);
      return 1;
  }
    
  fp = fopen( argv[1], "rb" );
  if( !fp ) {
    fprintf( stderr, "Couldn't open '%s'. Exiting.\n", argv[1] );
  }
  //size_t fread ( void * ptr, size_t size, size_t count, FILE * stream );
  //int  fstat(int fildes, struct stat *buf);
  fstat( fileno(fp), &statbuf );
  fsize = statbuf.st_size;
  buf = (uint16_t*)malloc( fsize );
  if( !buf ) {
    fprintf( stderr, "Insufficient memory to allocate %lu bytes for image.\n", fsize );
  }
  printf("Reading %s...", argv[1]);
  sizeread = fread( buf, 1, fsize, fp );
  if( sizeread != fsize ) {
    fprintf( stderr, "\nSize mismatch reading %s.\n", argv[1] );
  }
  printf(" %ld bytes.\n", fsize);

  Supexec(cacheoff);
  printf("Erasing Flash...\n");
  Supexec(erase);
  sleep(10);

  printf("Programming Flash...\n");
  Supexec(program);
  sleep(10);
  
  printf("Verifying...\n");
  Supexec(verify);
  printf("Verification success.\n");
  
  printf( "Hit enter to exit.\n");
  getchar();



  return 0;
}
