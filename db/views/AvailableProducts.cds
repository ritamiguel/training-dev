using {training.products as products} from '../schema/products';

namespace training.views;

define view AvailableProducts as
    select from products.TblProducts where validFrom <= now() and validTo >= now();