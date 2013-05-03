©2011 BIT-PAY LLC.
Permission is hereby granted to any person obtaining a copy of this software
and associated documentation for use and/or modification in association with
the bitpay.com service.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

Bitcoin payment module for Xcart using the bitpay.com service.

Installation
------------
1. Copy these files into your xcart/ directory (e.g. ~/www/xcart/ or ~/www/).  They will not overwrite any existing files.
2. Run modules/Bitpay/install.sql on your Xcart database (e.g. "mysql -u[user] -p xcartdb < install.sql" OR copy the contents into phpMyAdmin).

Configuration
-------------
1. Create an API key at bitpay.com by clicking My Account > API Access Keys > Add New API Key.
2. In your Xcart admin panel, go to Settings > Payment Methods > Payment Gateways.
3. Change Your Country to All Countries, select Bitpay and click Add.
4. Click Payment Methods tab, check the box next to Bitpay and click Apply Changes.
5. In the same Bitpay section click Configure. 
6. Enter your API key from step 1 and click Update.

Usage
-------------
When a shopper chooses the Bitcoin payment method, they will be redirected to Bitpay.com where they will pay an invoice.  Bitpay will then notify your Xcart system that the order was paid for.  The customer will be presented with a button to return to your store.  

The order status in the admin panel will be "Processed" if payment has been confirmed. 

Note: This extension does not provide a means of automatically pulling a current BTC exchange rate for presenting BTC prices to shoppers.

Change Log
-------------
Version 1
  - Initial version, tested against Xcart 4.5.5