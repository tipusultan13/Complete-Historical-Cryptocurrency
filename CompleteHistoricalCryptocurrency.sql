CREATE
    DATABASE CompleteHistoricalCryptocurrency
USE
    CompleteHistoricalCryptocurrency

-- Clean The Dataset And Format --
----------------------------------

-- Remove the comma --
UPDATE CryptoData
SET 
    [Open] = REPLACE([Open], ',', ''),
    High = REPLACE(High, ',', ''),
    Low = REPLACE(Low, ',', ''),
    [Close] = REPLACE([Close], ',', ''),
    Volume = REPLACE(Volume, ',', ''),
    Market_cap = REPLACE(Market_cap, ',', '');

-- Change the data type of 'Open' column to FLOAT
ALTER TABLE CryptoData
ALTER COLUMN [Open] FLOAT;

-- Change the data type of 'High' column to FLOAT
ALTER TABLE CryptoData
ALTER COLUMN High FLOAT;

-- Change the data type of 'Low' column to FLOAT
ALTER TABLE CryptoData
ALTER COLUMN Low FLOAT;

-- Change the data type of 'Close' column to FLOAT
ALTER TABLE CryptoData
ALTER COLUMN [Close] FLOAT;

-- Change the data type of 'Close' column to FLOAT
UPDATE CryptoData
SET 
    Volume = REPLACE(Volume, '.', '')
ALTER TABLE CryptoData
ALTER COLUMN Volume Bigint 

-- Change the data type of 'Close' column to FLOAT
UPDATE CryptoData
SET 
    Market_Cap = REPLACE(Market_Cap, '.', '')
ALTER TABLE CryptoData
ALTER COLUMN Market_Cap BIGINT;

-- Project Questions --  
----------------------
-- What are the cryptocurrencies do the list has? --
-- How the prices of cryptocurrencies are changing over time? --
-- What is the volatilities between each currencies? (Difference between High and Low) --
-- Provide some insights about trading volume of different cryptocurrencies --
-- Which cryptocurrencies are the top performing cryptocurrencies? --
-- Is there any correlation between different cryptocurrencies? --
-- Is there any seasonal pattern in the cryptocurrencies? --

-- What are the cryptocurrencies do the list has? --
SELECT Currency
FROM CryptoData
GROUP BY Currency
-- We have bitcoin-cash, ethereum, bitcoin, tether, litecoin, xrp, binance-coin, stellar, eos, tezos, cardano, bitcoin-sv as cryptocurrencies --

-- How the prices of ethereum are changing over time? (similar for other currencies) --
SELECT Date, [Close]
FROM CryptoData
WHERE Currency = 'ethereum'
ORDER BY Date
-- As we can see, the cryptocurrencies are extreamly volatile over time. 

-- What is the volatilities between each currencies? (Difference between High and Low) --
SELECT
    Currency,
    SQRT(AVG(POWER(High - Low, 2))) AS Volatility
FROM
    CryptoData
GROUP BY
    Currency
ORDER BY
    Volatility 
    DESC
-- Bitcoin has the maximum volatility -> 398.44











SELECT *
FROM CryptoData

