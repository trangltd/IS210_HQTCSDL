-------------- lost update -----------
--SET TRANSACTION ISOLATION LEVEL Read committed;
--SELECT GIA FROM SANPHAM WHERE MASP = 4;
--
--UPDATE SANPHAM SET GIA = 50000 WHERE MASP = 4;
--
--COMMIT;
--SELECT GIA FROM SANPHAM WHERE MASP = 4;
/*Giải quyết*/
--SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
--SELECT GIA FROM SANPHAM WHERE MASP = 4;
--
--UPDATE SANPHAM SET GIA = 50000 WHERE MASP = 4;
--
--COMMIT;
--SELECT GIA FROM SANPHAM WHERE MASP = 4;

------------------- Non - repeatable read -----------------
--INSERT INTO HOADON VALUES(1112,TO_DATE(SYSDATE, 'DD/MM/YYYY HH24:MI:SS')
--                            , 1000, 1,2, 100, 900);
--COMMIT;


-------------- Phantom read -----------
--SET TRANSACTION ISOLATION LEVEL Read committed;
--
--INSERT INTO user_qlch.SANPHAM VALUES(162, N'test phantom read', 2000, 1, N'Cam', 100, NULL, N'\CuaHangHoa\AnhSanPham\HoaCanh\hoa hồng juliet.jpg');
--
--COMMIT;



---------------- Deadlock -----------
--SET TRANSACTION ISOLATION LEVEL Read committed;
--UPDATE SANPHAM SET GIA = 30000 WHERE MASP = 111;
--
--UPDATE SANPHAM SET GIA = 15000 WHERE MASP = 110;
--COMMIT;

















