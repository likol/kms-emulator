all: help                                                                                     
                                                                                              
help:                                                                                         
        @echo ""                                                                              
        @echo "-- Help Menu"                                                                  
        @echo ""                                                                              
        @echo "   1. make test               - Run Test service (setup yml: test-compose.yml)"
        @echo "   2. make compose            - Run Container via docker-compose"              
        @echo "   3. make clear              - Remove Container(s)"                           
        @echo "   4. make logs               - Show Container(s) log"                         
                                                                                              
                                                                                              
test:                                                                                         
        @echo "Run Test..."                                                                   
        @docker-compose -f test-compose.yml up -d                                             
        @docker-compose -f test-compose.yml logs                                              
        @docker-compose -f test-compose.yml down                                              
compose:                                                                                      
        @echo "Run Container via docker-compose..."                                           
        @docker-compose up -d                                                                 
                                                                                              
clear:                                                                                        
        @echo "Remove container..."                                                           
        @docker-compose down                                                                  
logs:                                                                                         
        @echo "Show container log..."                                                         
        @docker-compose logs                                                                  