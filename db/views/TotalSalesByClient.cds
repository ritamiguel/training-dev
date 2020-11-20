using {training.salesorder as salesorder} from '../schema/salesorder';

namespace training.views;

define view TotalSalesByClient as
    select from salesorder.TblSalesOrderItem {
        salesOrder.client.ID as ![clientID],
        salesOrder.client.name as ![clientName],
        sum(product.quantity * product.salesPrice) as ![totalResult]
    } group by salesOrder.client.ID, salesOrder.client.name;