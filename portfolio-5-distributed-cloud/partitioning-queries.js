use("vifset_nosql");

 
db.orders_lagos.find({
    "customer.city": "Lagos"
});

 
db.orders_other.find({
    "customer.city": "Abuja"
});
 
db.orders_lagos.countDocuments();

 
db.orders_other.countDocuments();


db.orders_lagos.aggregate([
    {
        $unionWith: {
            coll: "orders_other"
        }
    },
    {
        $group: {
            _id: null,
            total_orders: {
                $sum: 1
            },
            total_payment: {
                $sum: "$payment.amount"
            }
        }
    }
]);

 
