db.orders.find({
    order_status: "Delivered"
});

 
db.orders.find({
    "customer.city": "Lagos"
});

 
db.orders.find({
    "payment.status": "Successful"
});
 
db.orders.updateOne(
    { order_id: 1003 },
    { $set: { order_status: "Processing" } }
);

 
db.orders.aggregate([
    {
        $group: {
            _id: "$order_status",
            total_orders: { $sum: 1 },
            total_payment: { $sum: "$payment.amount" }
        }
    }
]);
