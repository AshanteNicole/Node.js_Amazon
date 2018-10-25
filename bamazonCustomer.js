var mysql = require("mysql");
var inquirer = require("inquirer");

// create the connection information for the sql database
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "root",
  database: "bamazon_DB"
});

connection.connect(function(err) {
    if (err) throw err;
    // run the start function after the connection is made to prompt the user
    //start();
  });

  connection.query("SELECT * FROM products", function(error,result){
      if (error) throw error;
      console.log(result)
      inquirer.prompt([
          {
              name: "q1",
              type: "number",
              message: "What is the ID of the product you would like to purchase?",

          },
          {
            name: "q2",
            type: "number",
            message: "How many would you like to purchase?",

        }
      ]).then(function(answers){
         
          for (let i = 0; i < result.length; i++) {
            if (answers.q1 === result[i].item_id){
                if(result[i].stock_quantity >= answers.q2){
                    console.log("Plenty in stock")
                    var newQuantity = result[i].stock_quantity - answers.q2
                    var amountCharge = answers.q2 * result[i].price
                    connection.query(`UPDATE products SET stock_quantity = ${newQuantity} WHERE item_id = ${answers.q1}`, function(error, result){
                        if(error)   throw error
                        console.log("Thank you for your purchase. Your card was charged $" + amountCharge)
                    })
                    //This means updating the SQL database to reflect the remaining quantity.
                    //tell purchase was successful and how much you charge card for.
                } else{
                    console.log("Insufficient quantity!")
                }
            }
             
          }
      })
  })
  