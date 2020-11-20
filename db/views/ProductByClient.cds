using {training.salesorder as salesorder} from '../schema/salesorder';

namespace training.views;

define view ProductByClient as
    
    select from salesorder.TblSalesOrderItem {
        product.ID as ![productID],
        product.name as ![productName],
        product.quantity as ![productQuantity],
        product.manufacturer as ![productManu],
        product.basePrice as ![productBasePrice],
        product.salesPrice as ![productSalesPrice],
        salesOrder.client.ID as ![clientID],
        salesOrder.client.name as ![clientName],
        salesOrder.client.age as ![clientAge]
    };
