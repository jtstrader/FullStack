#include<iostream>
#include<cstdlib>
#include<string>

int main() {
    std::string output = "";
    std::string ins_join = "";

    srand(time(NULL));

    // format (exact): 
    //   (primary_key, sale_year, sale_val)

    // create join table with sales and products
    //   (product_key, sale_key)
    // note that sale_key in this context = primary_key
    //           product_key in this context = id

    // i = primary_key, id
    int primary_key, id;
    primary_key = 1;
    for(id=1; id<=23; id++) {
        for(int year=1990; year<=2000; year++) {
            // generate random sale value
            int val = std::rand() % 1000000 + 500000;
            output+="("+std::to_string(primary_key)+", TO_DATE('"+std::to_string(year)+"', 'YYYY'), "+std::to_string(val)+"),\n";
            ins_join+="("+std::to_string(id)+", "+std::to_string(primary_key)+"),\n";
            primary_key++;
        }
    }

    std::cout<<output<<std::endl;
    std::cout<<ins_join<<std::endl;

    return 0;
}