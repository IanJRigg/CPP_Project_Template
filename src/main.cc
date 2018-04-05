#include <getopt.h>

#include "configuration.h"

int main(int argc, char** argv)
{
    std::cout << "Currently doing nothing" << std::endl;

    if(argc == 2L)
    {
        int option = 0L;
        while((option = getopt(argc, argv, "")) != -1L)
        {
            switch(option)
            {
                default:
                    break;
            }
        }
    }
    else
    {
        exit(EXIT_FAILURE);
    }

    return 0L;
}