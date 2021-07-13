import { IProductYearlyData } from "./iproductyearlydata";

export interface IProduct {
    product_id: number;
    product_name: string;
    amount_in_stock: number;
    productYearlyData: IProductYearlyData[];
}
