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

-- Trends over time --  
----------------------


