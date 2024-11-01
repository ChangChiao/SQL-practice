CREATE TABLE products (
   name VARCHAR(100),         -- 商品名稱
   price INTEGER,            -- 原價
   discount_price INTEGER,    -- 優惠價
   stock INTEGER,            -- 庫存數量
   category VARCHAR(50),      -- 商品分類
   status VARCHAR(20)         -- 商品狀態
);

INSERT INTO products (name, price, discount_price, stock, category, status) VALUES
   ('北歐風雙人沙發', 39900, 35900, 3, '沙發', 'active'),
   ('貓抓皮L型沙發', 58900, 52900, 1, '沙發', 'active'),
   ('典雅三人座沙發', 42800, 42800, 5, '沙發', 'active'),
   ('工業風電視櫃', 5900, 4900, 12, '櫃子', 'active'),
   ('簡約書櫃', 3500, 3500, 8, '櫃子', 'active'),
   ('玄關鞋櫃', 2900, 2900, 15, '櫃子', 'active'),
   ('日式雙人床架', 12000, 11200, 6, '床架', 'active'),
   ('掀床五尺雙人床', 19900, 18900, 2, '床架', 'active'),
   ('兒童床架', 8900, 8900, 0, '床架', 'inactive'),
   ('電腦辦公椅', 4500, 3900, 20, '椅子', 'active'),
   ('餐椅四入組', 6000, 5200, 8, '椅子', 'active'),
   ('北歐風餐桌', 15800, 14800, 4, '桌子', 'active'),
   ('實木咖啡桌', 3200, 2900, 10, '桌子', 'active'),
   ('電競書桌', 8900, 8900, 0, '桌子', 'inactive');
