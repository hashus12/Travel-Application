# Travel-Application

SAP RAP (ABAP RESTful Application Programming Model) Travel application

SAP RAP ile Travel uygulaması 
RAP kullanarak geliştirdiğim seyahat uygulaması, seyahat verileri ve seyahatlere bağlı rezervasyonların raporlanması, oluşturulması, silme, değiştirme, onaylama ve reddetme gibi işlevleri içeren bir uygulamadır.

https://github.com/SAP-samples/abap-platform-rap-opensap/blob/main/README.md

NOT: Veriler demodur!  
Bu 3 pakette seyahat uygulaması ancak farklı senaryolar ile uygulanması bulunmaktadır.  
zrap_travel_has paketi managed senaryo ile uygulanmıştır create update delete gibi operasyonlar framework tarafından ele alınır.  
zrap_travel_u_has paketi unmanaged seneryo ile uygulanmıştır create update delete gibi operasyonlar BAPI yardımıyla kullanılmıştır.  
zrap_travel_e_has paketi agencyid alanı için değer yardımı verileri dış kaynaktan çekilir.

Uygulamanın Çalışma Adımları: 

Uygulamayı başlatıp 'Başlat' butonuna basınca aşağıdaki ekran bizi karşılar. Seyahat verileri raporu karşımıza çıkmış olur.

![image](https://github.com/hashus12/Travel-Application/assets/53178769/b23ec05f-e3e2-4d76-bf0c-541e66c47fb5)

Burda sağ yukardaki yarat butonuna basarak yeni bir seyahat oluşturabiliriz. Sil butonuna basarak var olan seyahatleri seçip silebiliriz. 
'Accept Travel' butonuyla seyahati onaylayıp 'Reject Travel' butonuyla seyahati reddedebiliriz. Yarat butonuna basıyoruz.

![image](https://github.com/hashus12/Travel-Application/assets/53178769/39a9c728-61e3-421d-97f8-bfea82caf7ff)

Şimdi yeni bir Seyahat oluşturalım. Verileri giriyoruz. Burda verileri girerken kaydetmesek dahi taslak olarak kalır. Bu sayede sisteme veri girişinde bir problemle karşılaşıp sistem kapanırsa veriler gitmez.
Taslak yapısı bu açıdan oldukça kullanışlıdır. Sisteme geri girildiğinde veri girişine kaldığınız yerden devam edebilirsiniz. Veriler girildikten sonra 'Yarat' butonuna basarak seyahatimizi oluşturmuş oluruz.
İstersek aşağıda bu seyahata rezervasyonda oluşturabiliriz.

![image](https://github.com/hashus12/Travel-Application/assets/53178769/2b289233-cb11-461a-9e34-1eb48740e892)

Aşağıda görüldüğü gibi oluşturduğumuz seyahat 206 id'li olarak gelmekte. 204 id'li seyahatte görüldüğü gibi taslak ifadesi var. Bu önceden bahsettiğimiz gibi verilerin kaydedilmeden taslak olarak kaldığı anlamına gelmektedir.

![image](https://github.com/hashus12/Travel-Application/assets/53178769/26292192-d61e-40a4-bb12-d2487122bfd5)

Bir seyahata tıklarsak ayrıntılı bilgisini ve bağlı olduğu rezervasyonları görebiliriz. Düzenle butonuna basarak güncelleme yapabiliriz veya sil butonuna basarak silebiliriz.

![image](https://github.com/hashus12/Travel-Application/assets/53178769/c5dc2a00-362c-44bd-8535-bb18f616090a)

Şimdi yine ana ekrana görüyoruz ekranın yukarısında filtre yapabileceğimiz bazı alanlar var. bu alanlarda birine gelip f4'e basarak yada yanındaki kutucuğa basarak arama yardımını açabiliriz yani sistemde var olan verilerden seçim yapabiliriz. Örneğin CustomerId alanına gelip f4'lüyoruz. İstediğimiz CustomerId'yi seçip entera basarsak seyahat verilerimiz bu CustomerId içeren verileri listeler yani filtrelemiş oluruz.

![image](https://github.com/hashus12/Travel-Application/assets/53178769/afcfac8c-2772-4be5-9ead-2dcbaf75be3e)
![image](https://github.com/hashus12/Travel-Application/assets/53178769/166dca79-4473-4578-af8b-56e404d7472e)

okuduğunuz için teşekkürler! :)

