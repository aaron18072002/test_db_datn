ALTER TABLE PHIEUCHIS
ADD CONSTRAINT FK_PHIEUCHIS_NHANVIENKETOANS
FOREIGN KEY (MAKETOANVIEN) REFERENCES NHANVIENKETOANS(MANHANVIEN);

ALTER TABLE PHIEUTHUS
ADD CONSTRAINT FK_PHIEUTHUS_NHANVIENKETOANS
FOREIGN KEY (MAKETOANVIEN) REFERENCES NHANVIENKETOANS(MANHANVIEN);

ALTER TABLE LOPHOCS
ADD CONSTRAINT FK_LOPHOCS_KHOAHOCS
FOREIGN KEY (MAKHOAHOC) REFERENCES KHOAHOCS(MAKHOAHOC);

ALTER TABLE LOPHOCS
ADD CONSTRAINT FK_LOPHOCS_PHONGHOCS
FOREIGN KEY (MAPHONGHOC) REFERENCES PHONGHOCS(MAPHONGHOC);

ALTER TABLE LOPHOCS
ADD CONSTRAINT FK_LOPHOCS_GIANGVIENS
FOREIGN KEY (MAGIANGVIEN) REFERENCES GIANGVIENS(MAGIANGVIEN);

ALTER TABLE GIANGVIENS
ADD CONSTRAINT FK_GIANGVIENS_LINHVUCS
FOREIGN KEY (MALINHVUC) REFERENCES LINHVUCS(MALINHVUC);

ALTER TABLE KHOAHOCS
ADD CONSTRAINT FK_KHOAHOCS_LINHVUCS
FOREIGN KEY (MALINHVUC) REFERENCES LINHVUCS(MALINHVUC);

ALTER TABLE CONGTACVIENS
ADD CONSTRAINT FK_CONGTACVIENS_NHANVIENS
FOREIGN KEY (MANHANVIEN) REFERENCES NHANVIENS(MANHANVIEN);

ALTER TABLE TAIKHOANS
ADD CONSTRAINT FK_TAIKHOANS_NHANVIENS
FOREIGN KEY (MANHANVIEN) REFERENCES NHANVIENS(MANHANVIEN);

ALTER TABLE HOCVIENS
ADD CONSTRAINT FK_HOCVIENS_KHOAHOCS1
FOREIGN KEY (KHOAHOCQUANTAM1) REFERENCES KHOAHOCS(MAKHOAHOC);

ALTER TABLE HOCVIENS
ADD CONSTRAINT FK_HOCVIENS_KHOAHOCS2
FOREIGN KEY (KHOAHOCQUANTAM2) REFERENCES KHOAHOCS(MAKHOAHOC);

ALTER TABLE CHITIETLOPHOCS
ADD CONSTRAINT FK_CHITIETLOPHOCS_HOCVIENS
FOREIGN KEY (MAHOCVIEN) REFERENCES HOCVIENS(MAHOCVIEN);

ALTER TABLE CHITIETLOPHOCS
ADD CONSTRAINT FK_CHITIETLOPHOCS_LOPHOCS
FOREIGN KEY (MALOPHOC) REFERENCES LOPHOCS(MALOPHOC);

ALTER TABLE THISINHDUTHIS
ADD CONSTRAINT FK_THISINHDUTHIS_LICHTHIS
FOREIGN KEY (MALICHTHI) REFERENCES LICHTHIS(MALICHTHI);

ALTER TABLE THISINHDUTHIS
ADD CONSTRAINT FK_THISINHDUTHIS_PHONGHOCS
FOREIGN KEY (MAPHONGTHI) REFERENCES PHONGHOCS(MAPHONGHOC);

ALTER TABLE LICHTHIS
ADD CONSTRAINT FK_LICHTHIS_LINHVUCS
FOREIGN KEY (MALINHVUC) REFERENCES LINHVUCS(MALINHVUC);

ALTER TABLE NHANVIENS 
ADD CONSTRAINT FK_NHANVIENS_CHUCVUS 
FOREIGN KEY (MACHUCVU) REFERENCES CHUCVUS(MACHUCVU);

