/*Izlistajte sva imena i prezimena autora
2. Izlistajte sve naslove knjiga u katologu koje u sebi sadr?e niz znakova LJUB
3. Izlistajte sva mjesta koja imaju definiran poštanski broj
4. Izlistajte nazive mjesta ?ija šifra nije izme?u 2000 i 3000
5. Postoji li u Hrvatsko mjesto koje po?inje s slovom Y?
6. Koliko je autora ro?eno 7. prosinca 1980?
7. Izlistajte sve aktivne izdava?e ?iji naziv završava s znakom . (to?ka)
8. Izlistajte sve neaktivne izdava?e koji nemaju šifre 346, 234, 589
9. Izlistajte sve katalo?ne zapise ?ija je šifra ve?a od 3000 ili naslov u sebi sadr?i rije?
ljubav*/
#1
select ime, prezime from autor;
#2
select naslov from katalog where naslov like '%ljub%';
#3
select postanskibroj from mjesto where postanskibroj !=('%%');
#4
select naziv from mjesto where not  (sifra>2000 and sifra<3000);
#5
select naziv from mjesto where 'y%';
#6
select datumrodenja from autor where datumrodenja like ('%1980-12-07 %');
#7
select naziv from izdavac where ('%.') and aktivan=1;
#8 Nevalja
select izdavac where sifra!=(346,234,589) and aktivan=0;
#9
select naslov from katalog where (sifra>3000) or naslov like '%ljubav%;'