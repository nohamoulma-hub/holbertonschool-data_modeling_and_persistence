UPDATE books
SET price = price * (1-price/100)
WHERE genre = 'Tech' AND stock > 5