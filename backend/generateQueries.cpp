#include<iostream>
#include<cstdlib>
#include<string>
#include<fstream>
#include<vector>
#include<cmath>

float genRandom(float n1, float n2) {
    return n1 + (rand()/(RAND_MAX/(n2-n1)));
}

std::string roundTwoDecToString(float num) {
    std::string str_num = std::to_string(std::ceil(num*100.0) / 100.0);
    // substring at decimal point because C++ adds tons of extra 0's and 1's after std::to_string()
    str_num = str_num.substr(0, str_num.find(".")+3);
    return str_num;
}

int main() {

    std::string input; int YEARS_OBSERVED;
    std::cout<<"Input Years Observed (-1 to exit): ";
    std::cin>>input;
    // try {
        YEARS_OBSERVED = std::stoi(input);
    // }
    // catch(InputMismatchException e) {
    //     std::cerr<<"\nInvalid input. Closing..."<<std::endl;
    //     return 1;
    // }

    // output files
    std::fstream ctsql("create_tables.sql", std::ios::out | std::ios::trunc);
    std::fstream idsql("insert_data.sql", std::ios::out | std::ios::trunc);

    std::string ctsql_out = "";
    std::string idsql_out = "";
    srand(time(NULL));

    // ctsql
    ctsql_out+=std::string("DROP TABLE IF EXISTS products;\nDROP TABLE IF EXISTS sales;\nDROP TABLE IF EXISTS product_sales;\n\n");
    ctsql_out+=std::string("CREATE TABLE products(product_id SERIAL PRIMARY KEY, product_name varchar(50) NOT NULL, amount_in_stock integer NOT NULL);\n")+
               std::string("CREATE TABLE products_yearly_data(sales_id SERIAL PRIMARY KEY, year DATE NOT NULL, units_sold INTEGER NOT NULL, production_cost float NOT NULL, distribution_cost float NOT NULL, retail_price float NOT NULL);\n")+
               std::string("CREATE TABLE product_sales(product_id INTEGER NOT NULL, sales_id INTEGER NOT NULL);");
    ctsql<<ctsql_out;

    // idsql
    // value required for every table. product names/id are hard coded. most else is random.
    idsql_out+=std::string("INSERT INTO products(product_id, product_name, amount_in_stock, production_cost, distribution_cost, retail_price)\nVALUES\n");
    std::vector<std::string> products; std::string pname;
    std::fstream products_in("products.dat", std::ios::in);
    while(getline(products_in, pname))
        products.push_back(pname);

    // products table completion
    for(int i=1; i<=products.size(); i++) {
        // create random value for product_cost (pc), distribution_cost (dc), and retail price(rp)
        int stock = rand() % 1000000 + 1;        
        // product information gathered, create query
        idsql_out+=std::string("\t("+std::to_string(i)+", '"+products[i-1]+"', "+std::to_string(stock)+", "+pc_s+", "+dc_s+", "+rp_s+")");
        if(i < products.size())
            idsql_out+=",\n";
        else
            idsql_out+=";\n";
        
    }

    idsql_out+=std::string("INSERT INTO sales(sales_id, year, units_sold)\nVALUES\n");
    // sales table completion
    const int START_YEAR = 1990;
    for(int i=0; i<products.size(); i++) {
        for(int j=START_YEAR; j<START_YEAR+YEARS_OBSERVED; j++) {
            int units_sold = rand() % 200000 + 800000;
            float pc, dc, rp; std::string pc_s, dc_s, rp_s;
            pc = genRandom(0, 100); pc_s = roundTwoDecToString(pc);
            dc = genRandom(0, 100); while(dc<pc) dc+=(pc/4); dc_s = roundTwoDecToString(dc);
            rp = genRandom(0, 100); while(rp<dc) rp+=(dc/4); rp_s = roundTwoDecToString(rp);

            idsql_out+=std::string("\t("+std::to_string(YEARS_OBSERVED*i+(j-START_YEAR)+1)+", TO_DATE('"+std::to_string(j)+"', 'YYYY'), "+std::to_string(units_sold)+")");
            if(j == START_YEAR+YEARS_OBSERVED-1 && i == products.size()-1)
                idsql_out+=";\n";
            else
                idsql_out+=",\n";
        }
    }

    idsql_out+=std::string("INSERT INTO product_sales(product_id, sales_id)\nVALUES\n");
    // product_sales join table completion
    for(int i=1, id=0; i<=products.size()*YEARS_OBSERVED; i++) {
        if((i-1) % YEARS_OBSERVED == 0)
            id++;
        idsql_out+=std::string("\t("+std::to_string(id)+", "+std::to_string(i)+")");
        if(i == products.size()*YEARS_OBSERVED)
            idsql_out+=";\n";
        else
            idsql_out+=",\n";
    }

    idsql<<idsql_out;

    return 0;
}