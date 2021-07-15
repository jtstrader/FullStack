import { IProductYearlyData } from "./iproductyearlydata";

export interface IProduct {
    product_id: number | undefined;
    product_name: string;
    product_description: string;
    category: string;
    amount_in_stock: number;
    acme_rating: number;
    user_rating: number;
    productYearlyData: IProductYearlyData[];
}
