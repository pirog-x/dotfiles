## Java -> Compile; execute; rm *.class
GREEN='\033[1;32m'
NC='\033[0m'

cj() {
    printf "$GREEN----------| javac $argv |----------$NC\n" ; 
    javac $argv ; 

    printf "\n\n$GREEN-----------| java $argv |----------$NC\n" ; 
    java $argv ; 

    printf "\n\n$GREEN---------------| rm *.class |---------------$NC\n" ;
    find . -name "*.class" -type f -delete
}
