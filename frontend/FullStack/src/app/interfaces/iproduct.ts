import { ISale } from "./isale";

export interface IProduct {
    product_id: number;
    product_name: string;
    amount_in_stock: number;
    production_cost: number;
    distribution_cost: number;
    retail_price: number;
    sales: ISale[];
}
