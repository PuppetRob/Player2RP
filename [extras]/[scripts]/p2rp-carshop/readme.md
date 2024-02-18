Settings:
Import the Database.sql file
Configure the stores you want to add to the ``carshop_stores`` table in your database.

Open the file ``nxt-carshop/config/config.lua`` in this file you will find a variety of settings for the store.
Choose whether the framework is ``QBcore`` or ``ESX``

You need exports the functions in qb-management
add the code below in qb-management/server/sv_boss.lua at the end of the file

exports('AddMoney', AddMoney)
exports('RemoveMoney', RemoveMoney)
exports('GetAccount', GetAccount)

``carshop_stock`` is the stores stock (no need to touch)

``carshop_vehicles`` is the table of vehicles available for shop owners to buy vehicles, 
there you add the global stock, this stock will appear for shop owners to buy for their companies' stock. 
Set a price and quantity available

