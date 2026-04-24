USE [wasteManagement] 
GO

-- DimTruck
INSERT INTO DimTruck VALUES (1, 'Compactor')
INSERT INTO DimTruck VALUES (2, 'Tipper')
INSERT INTO DimTruck VALUES (3, 'Flatbed')

-- DimStation
INSERT INTO DimStation VALUES (1, 'Cairo')
INSERT INTO DimStation VALUES (2, 'Giza')
INSERT INTO DimStation VALUES (3, 'Alexandria')

-- DimDate
INSERT INTO DimDate VALUES (1, '2026-01-05', 2026, 1, 'Q1', 1, 'January', 5, 1, 'Monday')
INSERT INTO DimDate VALUES (2, '2026-01-12', 2026, 1, 'Q1', 1, 'January', 12, 1, 'Monday')
INSERT INTO DimDate VALUES (3, '2026-02-03', 2026, 1, 'Q1', 2, 'February', 3, 2, 'Tuesday')
INSERT INTO DimDate VALUES (4, '2026-02-18', 2026, 1, 'Q1', 2, 'February', 18, 3, 'Wednesday')
INSERT INTO DimDate VALUES (5, '2026-03-10', 2026, 1, 'Q1', 3, 'March', 10, 2, 'Tuesday')

-- FactTrips
INSERT INTO FactTrips VALUES (1, 1, 1, 1, 120.5)
INSERT INTO FactTrips VALUES (2, 2, 2, 2, 95.0)
INSERT INTO FactTrips VALUES (3, 3, 1, 3, 210.0)
INSERT INTO FactTrips VALUES (4, 4, 3, 1, 180.75)
INSERT INTO FactTrips VALUES (5, 5, 2, 2, 150.0)
INSERT INTO FactTrips VALUES (6, 1, 1, 3, 130.0)
INSERT INTO FactTrips VALUES (7, 3, 3, 1, 95.5)
INSERT INTO FactTrips VALUES (8, 2, 2, 2, 200.0)