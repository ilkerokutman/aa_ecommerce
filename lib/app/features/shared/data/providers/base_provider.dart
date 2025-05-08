import 'package:aa_ecommerce/app/core/constants/keys.dart';
import 'package:aa_ecommerce/app/features/shared/data/models/generic_api_response.dart';
import 'package:dio/dio.dart';

class BaseProvider {
  static Dio getDio() {
    Dio dio = Dio();
    dio.options.baseUrl = 'https://dummyjson.com';
    dio.options.headers.addAll({'Content-Type': 'application/json'});
    dio.options.followRedirects = false;
    return dio;
  }

  // get
  static Future<GenericApiResponse> get(String url) async {
    await Future.delayed(Duration(milliseconds: 20));
    // Dio dio = getDio();
    // final response = await dio.get(url);

    switch (url) {
      case Keys.apiUrlProducts:
        return GenericApiResponse.fromMap({
          "statusCode": 200,
          "success": true,
          "data": [
            {
              "id": 1,
              "title": "iPhone 13 Pro Max",
              "description":
                  "Apple'ın en güçlü akıllı telefonu, A15 Bionic çip, 6.7 inç Super Retina XDR ekran ve profesyonel kamera sistemi ile donatılmıştır. Gece modu, ProRAW ve 4K Dolby Vision HDR kayıt gibi özelliklerle fotoğraf ve video deneyiminizi en üst seviyeye çıkarır.",
              "code": "ELK-001",
              "images": [
                "https://picsum.photos/id/1/800/800",
                "https://picsum.photos/id/2/800/800",
                "https://picsum.photos/id/3/800/800",
              ],
              "price": 24999.99,
              "salePrice": 22499.99,
              "categoryId": 1,
              "comments": [
                {
                  "id": 1,
                  "userName": "Mehmet K.",
                  "text": "Harika bir telefon, kamera kalitesi inanılmaz.",
                  "rating": 5.0,
                  "date": "2025-03-15T14:30:00",
                },
                {
                  "id": 2,
                  "userName": "Ayşe Y.",
                  "text":
                      "Pil ömrü beklediğimden daha iyi, tam gün kullanabiliyorum.",
                  "rating": 4.5,
                  "date": "2025-03-20T09:15:00",
                },
                {
                  "id": 3,
                  "userName": "Emre T.",
                  "text": "Fiyatı biraz yüksek ama kalitesi de o oranda iyi.",
                  "rating": 4.0,
                  "date": "2025-04-05T16:22:00",
                },
              ],
            },
            {
              "id": 2,
              "title": "Samsung Galaxy S22 Ultra",
              "description":
                  "S Pen destekli amiral gemisi akıllı telefon, 108MP kamera, 6.8 inç Dynamic AMOLED ekran ve 5000mAh pil ile güçlendirilmiştir. Gece fotoğrafçılığı için geliştirilmiş sensörler ve yapay zeka destekli kamera özellikleri sunar.",
              "code": "ELK-002",
              "images": [
                "https://picsum.photos/id/4/800/800",
                "https://picsum.photos/id/5/800/800",
                "https://picsum.photos/id/6/800/800",
                "https://picsum.photos/id/7/800/800",
              ],
              "price": 19999.99,
              "salePrice": 17999.99,
              "categoryId": 1,
              "comments": [
                {
                  "id": 4,
                  "userName": "Ali R.",
                  "text":
                      "S Pen özelliği çok kullanışlı, not almak için harika.",
                  "rating": 4.0,
                  "date": "2025-02-10T16:45:00",
                },
                {
                  "id": 5,
                  "userName": "Zeynep T.",
                  "text":
                      "Kamera kalitesi mükemmel ama pil ömrü biraz daha iyi olabilirdi.",
                  "rating": 3.5,
                  "date": "2025-02-25T11:20:00",
                },
              ],
            },
            {
              "id": 3,
              "title": "MacBook Pro 16 inç",
              "description":
                  "M1 Pro çip, 16 inç Liquid Retina XDR ekran, 16GB RAM ve 512GB SSD depolama ile profesyonel kullanıcılar için tasarlanmış güçlü bir dizüstü bilgisayar. Gelişmiş soğutma sistemi ve uzun pil ömrü ile yoğun iş yüklerinde bile kesintisiz çalışma imkanı sunar.",
              "code": "ELK-003",
              "images": [
                "https://picsum.photos/id/8/800/800",
                "https://picsum.photos/id/9/800/800",
                "https://picsum.photos/id/10/800/800",
              ],
              "price": 42999.99,
              "salePrice": null,
              "categoryId": 1,
              "comments": [
                {
                  "id": 6,
                  "userName": "Burak M.",
                  "text": "Video düzenleme için aldım, performansı inanılmaz.",
                  "rating": 5.0,
                  "date": "2025-01-20T13:10:00",
                },
                {
                  "id": 7,
                  "userName": "Selin K.",
                  "text":
                      "Pil ömrü gerçekten etkileyici, tüm gün şarj etmeden kullanabiliyorum.",
                  "rating": 4.5,
                  "date": "2025-02-05T10:30:00",
                },
                {
                  "id": 8,
                  "userName": "Onur Y.",
                  "text": "Fiyatı yüksek ama profesyonel iş için değer.",
                  "rating": 4.0,
                  "date": "2025-03-12T17:45:00",
                },
              ],
            },
            {
              "id": 4,
              "title": "Deri Ceket",
              "description":
                  "Yüksek kaliteli gerçek deri, modern kesim ve dayanıklı yapı ile uzun yıllar kullanabileceğiniz şık bir deri ceket. İç astar ve çoklu cep detayları ile hem şık hem de fonksiyonel.",
              "code": "GYM-001",
              "images": [
                "https://picsum.photos/id/11/800/800",
                "https://picsum.photos/id/12/800/800",
              ],
              "price": 2999.99,
              "salePrice": 2499.99,
              "categoryId": 2,
              "comments": [
                {
                  "id": 9,
                  "userName": "Deniz A.",
                  "text":
                      "Kalitesi çok iyi, tam beden aldım ve mükemmel oturdu.",
                  "rating": 5.0,
                  "date": "2025-02-18T14:25:00",
                },
                {
                  "id": 10,
                  "userName": "Canan B.",
                  "text":
                      "Derisi yumuşak ve kaliteli ama kol boyları biraz uzun geldi.",
                  "rating": 4.0,
                  "date": "2025-03-05T09:40:00",
                },
              ],
            },
            {
              "id": 5,
              "title": "Slim Fit Kot Pantolon",
              "description":
                  "Yüksek kaliteli pamuklu denim kumaştan üretilmiş, rahat ve şık slim fit kot pantolon. Esnek yapısı sayesinde gün boyu konfor sunar ve her tarza uyum sağlar.",
              "code": "GYM-002",
              "images": [
                "https://picsum.photos/id/13/800/800",
                "https://picsum.photos/id/14/800/800",
                "https://picsum.photos/id/15/800/800",
              ],
              "price": 599.99,
              "salePrice": 499.99,
              "categoryId": 2,
              "comments": [
                {
                  "id": 11,
                  "userName": "Murat S.",
                  "text": "Kalıbı çok güzel, rahat ve şık.",
                  "rating": 4.5,
                  "date": "2025-01-25T11:15:00",
                },
                {
                  "id": 12,
                  "userName": "Gizem T.",
                  "text": "Kumaşı kaliteli ama beden tablosuna göre biraz dar.",
                  "rating": 3.5,
                  "date": "2025-02-10T16:30:00",
                },
                {
                  "id": 13,
                  "userName": "Kerem A.",
                  "text": "Fiyatına göre kalitesi iyi, memnun kaldım.",
                  "rating": 4.0,
                  "date": "2025-03-20T13:45:00",
                },
              ],
            },
            {
              "id": 6,
              "title": "Akıllı LED TV 55 inç",
              "description":
                  "4K Ultra HD çözünürlük, HDR desteği ve akıllı TV özellikleri ile donatılmış 55 inç LED televizyon. Dahili Wi-Fi, Bluetooth ve çeşitli streaming uygulamaları ile eğlence deneyiminizi zenginleştirir.",
              "code": "ELK-004",
              "images": [
                "https://picsum.photos/id/16/800/800",
                "https://picsum.photos/id/17/800/800",
                "https://picsum.photos/id/18/800/800",
                "https://picsum.photos/id/19/800/800",
              ],
              "price": 12999.99,
              "salePrice": 10999.99,
              "categoryId": 1,
              "comments": [
                {
                  "id": 14,
                  "userName": "Serkan Y.",
                  "text":
                      "Görüntü kalitesi harika, akıllı özellikleri de çok kullanışlı.",
                  "rating": 4.5,
                  "date": "2025-02-15T18:20:00",
                },
                {
                  "id": 15,
                  "userName": "Melis K.",
                  "text":
                      "Kurulumu kolay, Netflix ve YouTube gibi uygulamaları sorunsuz çalıştırıyor.",
                  "rating": 5.0,
                  "date": "2025-03-10T12:35:00",
                },
              ],
            },
            {
              "id": 7,
              "title": "Modern Koltuk Takımı",
              "description":
                  "Yüksek kaliteli kumaş döşeme, ergonomik tasarım ve dayanıklı ahşap iskelet ile üretilmiş 3+2+1 modern koltuk takımı. Oturma odanıza şıklık ve konfor katacak minimalist tasarım.",
              "code": "EV-001",
              "images": [
                "https://picsum.photos/id/20/800/800",
                "https://picsum.photos/id/21/800/800",
                "https://picsum.photos/id/22/800/800",
              ],
              "price": 15999.99,
              "salePrice": 13999.99,
              "categoryId": 3,
              "comments": [
                {
                  "id": 16,
                  "userName": "Ahmet F.",
                  "text": "Koltuklar çok rahat ve kumaşı kaliteli.",
                  "rating": 4.5,
                  "date": "2025-01-30T14:50:00",
                },
                {
                  "id": 17,
                  "userName": "Sevgi M.",
                  "text": "Rengi ve tasarımı tam istediğim gibi, çok memnunum.",
                  "rating": 5.0,
                  "date": "2025-02-20T11:25:00",
                },
                {
                  "id": 18,
                  "userName": "Ozan K.",
                  "text":
                      "Teslimat ve kurulum sorunsuz gerçekleşti, ürün kalitesi iyi.",
                  "rating": 4.0,
                  "date": "2025-03-15T16:40:00",
                },
              ],
            },
            {
              "id": 8,
              "title": "Yüz Bakım Seti",
              "description":
                  "Doğal içerikli temizleyici, tonik, nemlendirici ve serum içeren kapsamlı yüz bakım seti. Tüm cilt tiplerine uygun formülü ile cildinize derinlemesine bakım sağlar.",
              "code": "KZM-001",
              "images": [
                "https://picsum.photos/id/23/800/800",
                "https://picsum.photos/id/24/800/800",
              ],
              "price": 899.99,
              "salePrice": 699.99,
              "categoryId": 5,
              "comments": [
                {
                  "id": 19,
                  "userName": "Elif N.",
                  "text":
                      "Cildimde gözle görülür bir iyileşme sağladı, özellikle serum harika.",
                  "rating": 5.0,
                  "date": "2025-02-05T09:30:00",
                },
                {
                  "id": 20,
                  "userName": "Berk T.",
                  "text":
                      "Hassas cildim var ve hiç tahriş yaratmadı, memnun kaldım.",
                  "rating": 4.5,
                  "date": "2025-03-01T13:15:00",
                },
                {
                  "id": 21,
                  "userName": "Zehra K.",
                  "text": "Kokusu çok güzel ama nemlendirici biraz yağlı.",
                  "rating": 3.5,
                  "date": "2025-03-25T17:50:00",
                },
              ],
            },
            {
              "id": 9,
              "title": "Profesyonel Koşu Ayakkabısı",
              "description":
                  "Hafif ve dayanıklı malzemeden üretilmiş, özel yastıklama teknolojisi ile darbe emici tabana sahip profesyonel koşu ayakkabısı. Her zemin tipinde maksimum performans ve konfor sağlar.",
              "code": "SPR-001",
              "images": [
                "https://picsum.photos/id/25/800/800",
                "https://picsum.photos/id/26/800/800",
                "https://picsum.photos/id/27/800/800",
              ],
              "price": 1499.99,
              "salePrice": 1299.99,
              "categoryId": 6,
              "comments": [
                {
                  "id": 22,
                  "userName": "Can Y.",
                  "text":
                      "Uzun mesafe koşularında bile ayaklarım hiç ağrımıyor, çok rahat.",
                  "rating": 5.0,
                  "date": "2025-01-15T10:20:00",
                },
                {
                  "id": 23,
                  "userName": "Seda M.",
                  "text":
                      "Hafif ve şık, performansımda gözle görülür artış sağladı.",
                  "rating": 4.5,
                  "date": "2025-02-10T15:35:00",
                },
              ],
            },
            {
              "id": 10,
              "title": "Akıllı Robot Süpürge",
              "description":
                  "Gelişmiş navigasyon sistemi, güçlü emiş gücü ve uzun pil ömrü ile evinizin temizliğini otomatikleştiren akıllı robot süpürge. Mobil uygulama ile uzaktan kontrol edilebilir ve programlanabilir.",
              "code": "EV-002",
              "images": [
                "https://picsum.photos/id/28/800/800",
                "https://picsum.photos/id/29/800/800",
                "https://picsum.photos/id/30/800/800",
                "https://picsum.photos/id/31/800/800",
              ],
              "price": 4999.99,
              "salePrice": 3999.99,
              "categoryId": 3,
              "comments": [
                {
                  "id": 24,
                  "userName": "Tolga B.",
                  "text":
                      "Evcil hayvan tüylerini mükemmel topluyor, programlama özelliği çok kullanışlı.",
                  "rating": 4.5,
                  "date": "2025-02-25T11:40:00",
                },
                {
                  "id": 25,
                  "userName": "Derya A.",
                  "text":
                      "Mobilyaların altına bile girebiliyor, temizlik artık çok kolay.",
                  "rating": 5.0,
                  "date": "2025-03-15T14:55:00",
                },
                {
                  "id": 26,
                  "userName": "Mert K.",
                  "text": "Pil ömrü iyi ama bazen köşelerde takılıyor.",
                  "rating": 3.5,
                  "date": "2025-04-01T16:30:00",
                },
              ],
            },
            {
              "id": 11,
              "title": "Web Kamera 11",
              "description": "En yeni teknoloji ile donatılmıştır.",
              "code": "PRD-011",
              "images": [
                "https://picsum.photos/id/126/800/800",
                "https://picsum.photos/id/193/800/800",
                "https://picsum.photos/id/171/800/800",
              ],
              "price": 41803.74,
              "salePrice": null,
              "categoryId": 8,
              "comments": [
                {
                  "id": 26,
                  "userName": "Zeynep T.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 4.8,
                  "date": "2025-01-07T00:00:00",
                },
              ],
            },
            {
              "id": 12,
              "title": "Kahve Makinesi 12",
              "description": "En yeni teknoloji ile donatılmıştır.",
              "code": "PRD-012",
              "images": [
                "https://picsum.photos/id/188/800/800",
                "https://picsum.photos/id/108/800/800",
                "https://picsum.photos/id/187/800/800",
              ],
              "price": 41344.14,
              "salePrice": 35782.48,
              "categoryId": 9,
              "comments": [
                {
                  "id": 29,
                  "userName": "Serkan Y.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 3.8,
                  "date": "2025-02-25T00:00:00",
                },
              ],
            },
            {
              "id": 13,
              "title": "Güneş Gözlüğü 13",
              "description":
                  "Gelişmiş özellikleriyle dikkat çeken bu ürün, kullanıcı deneyimini en üst düzeye çıkarır.",
              "code": "PRD-013",
              "images": [
                "https://picsum.photos/id/160/800/800",
                "https://picsum.photos/id/108/800/800",
              ],
              "price": 30385.23,
              "salePrice": null,
              "categoryId": 14,
              "comments": [
                {
                  "id": 32,
                  "userName": "Gizem T.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 4.3,
                  "date": "2025-03-11T00:00:00",
                },
              ],
            },
            {
              "id": 14,
              "title": "Bisiklet 14",
              "description":
                  "Profesyonel kullanıcılar için özel olarak tasarlanmıştır.",
              "code": "PRD-014",
              "images": [
                "https://picsum.photos/id/200/800/800",
                "https://picsum.photos/id/129/800/800",
                "https://picsum.photos/id/187/800/800",
              ],
              "price": 35710.83,
              "salePrice": null,
              "categoryId": 11,
              "comments": [
                {
                  "id": 35,
                  "userName": "Emre T.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 3.4,
                  "date": "2025-02-17T00:00:00",
                },
              ],
            },
            {
              "id": 15,
              "title": "Sırt Çantası 15",
              "description":
                  "Modern tasarımı ve yüksek performansıyla öne çıkar.",
              "code": "PRD-015",
              "images": [
                "https://picsum.photos/id/199/800/800",
                "https://picsum.photos/id/145/800/800",
              ],
              "price": 29184.29,
              "salePrice": 44079.08,
              "categoryId": 6,
              "comments": [
                {
                  "id": 38,
                  "userName": "Tolga B.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 4.5,
                  "date": "2025-01-18T00:00:00",
                },
                {
                  "id": 39,
                  "userName": "Canan B.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 4.9,
                  "date": "2025-04-15T00:00:00",
                },
                {
                  "id": 40,
                  "userName": "Can Y.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 4.3,
                  "date": "2025-03-20T00:00:00",
                },
              ],
            },
            {
              "id": 16,
              "title": "Kablosuz Kulaklık 16",
              "description":
                  "Profesyonel kullanıcılar için özel olarak tasarlanmıştır.",
              "code": "PRD-016",
              "images": [
                "https://picsum.photos/id/102/800/800",
                "https://picsum.photos/id/177/800/800",
                "https://picsum.photos/id/133/800/800",
              ],
              "price": 30355.01,
              "salePrice": 9736.69,
              "categoryId": 9,
              "comments": [
                {
                  "id": 41,
                  "userName": "Burak M.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 3.7,
                  "date": "2025-03-07T00:00:00",
                },
                {
                  "id": 42,
                  "userName": "Canan B.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 4.5,
                  "date": "2025-01-29T00:00:00",
                },
              ],
            },
            {
              "id": 17,
              "title": "Oyuncu Klavyesi 17",
              "description": "Ev ve ofis kullanımı için mükemmeldir.",
              "code": "PRD-017",
              "images": [
                "https://picsum.photos/id/155/800/800",
                "https://picsum.photos/id/114/800/800",
              ],
              "price": 47669.35,
              "salePrice": null,
              "categoryId": 1,
              "comments": [
                {
                  "id": 44,
                  "userName": "Deniz A.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 4.4,
                  "date": "2025-03-16T00:00:00",
                },
              ],
            },
            {
              "id": 18,
              "title": "Çanta 18",
              "description":
                  "Kolay taşınabilirlik ve kullanım kolaylığı sunar.",
              "code": "PRD-018",
              "images": [
                "https://picsum.photos/id/178/800/800",
                "https://picsum.photos/id/192/800/800",
                "https://picsum.photos/id/112/800/800",
              ],
              "price": 36560.26,
              "salePrice": null,
              "categoryId": 12,
              "comments": [
                {
                  "id": 47,
                  "userName": "Ali R.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 3.5,
                  "date": "2025-04-07T00:00:00",
                },
                {
                  "id": 48,
                  "userName": "Sevgi M.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 4.1,
                  "date": "2025-03-25T00:00:00",
                },
              ],
            },
            {
              "id": 19,
              "title": "Koltuk 19",
              "description":
                  "Profesyonel kullanıcılar için özel olarak tasarlanmıştır.",
              "code": "PRD-019",
              "images": [
                "https://picsum.photos/id/144/800/800",
                "https://picsum.photos/id/181/800/800",
                "https://picsum.photos/id/129/800/800",
              ],
              "price": 27385.0,
              "salePrice": 28677.27,
              "categoryId": 1,
              "comments": [
                {
                  "id": 50,
                  "userName": "Kerem A.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 3.8,
                  "date": "2025-04-07T00:00:00",
                },
              ],
            },
            {
              "id": 20,
              "title": "Koltuk 20",
              "description":
                  "Günlük kullanım için idealdir ve şık bir görünüme sahiptir.",
              "code": "PRD-020",
              "images": [
                "https://picsum.photos/id/113/800/800",
                "https://picsum.photos/id/157/800/800",
                "https://picsum.photos/id/100/800/800",
              ],
              "price": 11922.92,
              "salePrice": 8705.05,
              "categoryId": 2,
              "comments": [
                {
                  "id": 53,
                  "userName": "Burak M.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 3.8,
                  "date": "2025-02-11T00:00:00",
                },
                {
                  "id": 54,
                  "userName": "Tolga B.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 4.5,
                  "date": "2025-03-06T00:00:00",
                },
                {
                  "id": 55,
                  "userName": "Ahmet F.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 3.7,
                  "date": "2025-03-06T00:00:00",
                },
              ],
            },
            {
              "id": 21,
              "title": "Yoga Matı 21",
              "description":
                  "Profesyonel kullanıcılar için özel olarak tasarlanmıştır.",
              "code": "PRD-021",
              "images": [
                "https://picsum.photos/id/121/800/800",
                "https://picsum.photos/id/181/800/800",
                "https://picsum.photos/id/102/800/800",
              ],
              "price": 26463.43,
              "salePrice": null,
              "categoryId": 14,
              "comments": [
                {
                  "id": 56,
                  "userName": "Tolga B.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 3.3,
                  "date": "2025-03-24T00:00:00",
                },
                {
                  "id": 57,
                  "userName": "Derya A.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 4.4,
                  "date": "2025-02-09T00:00:00",
                },
              ],
            },
            {
              "id": 22,
              "title": "Masa Lambası 22",
              "description": "Ev ve ofis kullanımı için mükemmeldir.",
              "code": "PRD-022",
              "images": [
                "https://picsum.photos/id/106/800/800",
                "https://picsum.photos/id/133/800/800",
              ],
              "price": 13072.97,
              "salePrice": 30571.18,
              "categoryId": 3,
              "comments": [
                {
                  "id": 59,
                  "userName": "Murat S.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 4.0,
                  "date": "2025-01-03T00:00:00",
                },
                {
                  "id": 60,
                  "userName": "Zehra K.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 3.8,
                  "date": "2025-03-24T00:00:00",
                },
              ],
            },
            {
              "id": 23,
              "title": "Oyuncu Klavyesi 23",
              "description":
                  "Günlük kullanım için idealdir ve şık bir görünüme sahiptir.",
              "code": "PRD-023",
              "images": [
                "https://picsum.photos/id/134/800/800",
                "https://picsum.photos/id/153/800/800",
              ],
              "price": 6652.84,
              "salePrice": 20758.72,
              "categoryId": 15,
              "comments": [
                {
                  "id": 62,
                  "userName": "Selin K.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 4.5,
                  "date": "2025-01-01T00:00:00",
                },
                {
                  "id": 63,
                  "userName": "Berk T.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 4.7,
                  "date": "2025-01-25T00:00:00",
                },
              ],
            },
            {
              "id": 24,
              "title": "Bisiklet 24",
              "description":
                  "Kolay taşınabilirlik ve kullanım kolaylığı sunar.",
              "code": "PRD-024",
              "images": [
                "https://picsum.photos/id/129/800/800",
                "https://picsum.photos/id/122/800/800",
                "https://picsum.photos/id/168/800/800",
              ],
              "price": 24886.07,
              "salePrice": null,
              "categoryId": 5,
              "comments": [
                {
                  "id": 65,
                  "userName": "Murat S.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 3.6,
                  "date": "2025-02-25T00:00:00",
                },
                {
                  "id": 66,
                  "userName": "Deniz A.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 3.9,
                  "date": "2025-02-20T00:00:00",
                },
              ],
            },
            {
              "id": 25,
              "title": "Akıllı Saat 25",
              "description":
                  "Gelişmiş özellikleriyle dikkat çeken bu ürün, kullanıcı deneyimini en üst düzeye çıkarır.",
              "code": "PRD-025",
              "images": [
                "https://picsum.photos/id/164/800/800",
                "https://picsum.photos/id/171/800/800",
                "https://picsum.photos/id/172/800/800",
              ],
              "price": 24447.52,
              "salePrice": null,
              "categoryId": 5,
              "comments": [
                {
                  "id": 68,
                  "userName": "Ayşe Y.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 3.5,
                  "date": "2025-04-06T00:00:00",
                },
                {
                  "id": 69,
                  "userName": "Melis K.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 4.2,
                  "date": "2025-04-13T00:00:00",
                },
              ],
            },
            {
              "id": 26,
              "title": "Çanta 26",
              "description":
                  "Profesyonel kullanıcılar için özel olarak tasarlanmıştır.",
              "code": "PRD-026",
              "images": [
                "https://picsum.photos/id/131/800/800",
                "https://picsum.photos/id/139/800/800",
                "https://picsum.photos/id/110/800/800",
                "https://picsum.photos/id/101/800/800",
              ],
              "price": 19473.09,
              "salePrice": 36830.48,
              "categoryId": 12,
              "comments": [
                {
                  "id": 71,
                  "userName": "Ali R.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 3.9,
                  "date": "2025-03-13T00:00:00",
                },
                {
                  "id": 72,
                  "userName": "Ali R.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 4.5,
                  "date": "2025-01-26T00:00:00",
                },
              ],
            },
            {
              "id": 27,
              "title": "Oyuncu Klavyesi 27",
              "description": "En yeni teknoloji ile donatılmıştır.",
              "code": "PRD-027",
              "images": [
                "https://picsum.photos/id/170/800/800",
                "https://picsum.photos/id/144/800/800",
                "https://picsum.photos/id/131/800/800",
                "https://picsum.photos/id/108/800/800",
              ],
              "price": 42574.04,
              "salePrice": null,
              "categoryId": 2,
              "comments": [
                {
                  "id": 74,
                  "userName": "Murat S.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 3.8,
                  "date": "2025-02-16T00:00:00",
                },
                {
                  "id": 75,
                  "userName": "Can Y.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 3.7,
                  "date": "2025-04-29T00:00:00",
                },
              ],
            },
            {
              "id": 28,
              "title": "Kahve Makinesi 28",
              "description":
                  "Günlük kullanım için idealdir ve şık bir görünüme sahiptir.",
              "code": "PRD-028",
              "images": [
                "https://picsum.photos/id/144/800/800",
                "https://picsum.photos/id/124/800/800",
                "https://picsum.photos/id/130/800/800",
              ],
              "price": 43514.03,
              "salePrice": null,
              "categoryId": 5,
              "comments": [
                {
                  "id": 77,
                  "userName": "Serkan Y.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 3.9,
                  "date": "2025-04-08T00:00:00",
                },
                {
                  "id": 78,
                  "userName": "Emre T.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 4.0,
                  "date": "2025-01-21T00:00:00",
                },
              ],
            },
            {
              "id": 29,
              "title": "Dambıl Seti 29",
              "description":
                  "Günlük kullanım için idealdir ve şık bir görünüme sahiptir.",
              "code": "PRD-029",
              "images": [
                "https://picsum.photos/id/186/800/800",
                "https://picsum.photos/id/187/800/800",
                "https://picsum.photos/id/155/800/800",
                "https://picsum.photos/id/111/800/800",
              ],
              "price": 44538.26,
              "salePrice": null,
              "categoryId": 10,
              "comments": [
                {
                  "id": 80,
                  "userName": "Sevgi M.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 4.6,
                  "date": "2025-03-05T00:00:00",
                },
                {
                  "id": 81,
                  "userName": "Murat S.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 4.9,
                  "date": "2025-02-14T00:00:00",
                },
                {
                  "id": 82,
                  "userName": "Derya A.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 3.6,
                  "date": "2025-03-28T00:00:00",
                },
              ],
            },
            {
              "id": 30,
              "title": "Elektrikli Süpürge 30",
              "description":
                  "Kolay taşınabilirlik ve kullanım kolaylığı sunar.",
              "code": "PRD-030",
              "images": [
                "https://picsum.photos/id/190/800/800",
                "https://picsum.photos/id/141/800/800",
                "https://picsum.photos/id/138/800/800",
              ],
              "price": 19819.0,
              "salePrice": 1077.42,
              "categoryId": 4,
              "comments": [
                {
                  "id": 83,
                  "userName": "Seda M.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 4.3,
                  "date": "2025-03-28T00:00:00",
                },
              ],
            },
            {
              "id": 31,
              "title": "Koltuk 31",
              "description":
                  "Profesyonel kullanıcılar için özel olarak tasarlanmıştır.",
              "code": "PRD-031",
              "images": [
                "https://picsum.photos/id/170/800/800",
                "https://picsum.photos/id/196/800/800",
                "https://picsum.photos/id/120/800/800",
                "https://picsum.photos/id/100/800/800",
              ],
              "price": 40513.75,
              "salePrice": null,
              "categoryId": 7,
              "comments": [
                {
                  "id": 86,
                  "userName": "Murat S.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 4.1,
                  "date": "2025-02-14T00:00:00",
                },
                {
                  "id": 87,
                  "userName": "Ali R.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 3.3,
                  "date": "2025-02-13T00:00:00",
                },
              ],
            },
            {
              "id": 32,
              "title": "Oyuncu Klavyesi 32",
              "description":
                  "Gelişmiş özellikleriyle dikkat çeken bu ürün, kullanıcı deneyimini en üst düzeye çıkarır.",
              "code": "PRD-032",
              "images": [
                "https://picsum.photos/id/168/800/800",
                "https://picsum.photos/id/193/800/800",
                "https://picsum.photos/id/147/800/800",
                "https://picsum.photos/id/103/800/800",
              ],
              "price": 2334.15,
              "salePrice": 39105.82,
              "categoryId": 15,
              "comments": [
                {
                  "id": 89,
                  "userName": "Ahmet F.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 4.0,
                  "date": "2025-02-20T00:00:00",
                },
                {
                  "id": 90,
                  "userName": "Ali R.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 4.9,
                  "date": "2025-04-18T00:00:00",
                },
              ],
            },
            {
              "id": 33,
              "title": "Kahve Makinesi 33",
              "description":
                  "Modern tasarımı ve yüksek performansıyla öne çıkar.",
              "code": "PRD-033",
              "images": [
                "https://picsum.photos/id/149/800/800",
                "https://picsum.photos/id/128/800/800",
                "https://picsum.photos/id/105/800/800",
                "https://picsum.photos/id/126/800/800",
              ],
              "price": 11917.77,
              "salePrice": 14487.82,
              "categoryId": 5,
              "comments": [
                {
                  "id": 92,
                  "userName": "Elif N.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 3.5,
                  "date": "2025-04-29T00:00:00",
                },
              ],
            },
            {
              "id": 34,
              "title": "Dambıl Seti 34",
              "description": "En yeni teknoloji ile donatılmıştır.",
              "code": "PRD-034",
              "images": [
                "https://picsum.photos/id/167/800/800",
                "https://picsum.photos/id/143/800/800",
                "https://picsum.photos/id/126/800/800",
              ],
              "price": 43364.86,
              "salePrice": 49498.22,
              "categoryId": 11,
              "comments": [
                {
                  "id": 95,
                  "userName": "Ayşe Y.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 3.4,
                  "date": "2025-02-13T00:00:00",
                },
                {
                  "id": 96,
                  "userName": "Berk T.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 4.9,
                  "date": "2025-04-29T00:00:00",
                },
              ],
            },
            {
              "id": 35,
              "title": "Elektrikli Süpürge 35",
              "description":
                  "Gelişmiş özellikleriyle dikkat çeken bu ürün, kullanıcı deneyimini en üst düzeye çıkarır.",
              "code": "PRD-035",
              "images": [
                "https://picsum.photos/id/184/800/800",
                "https://picsum.photos/id/197/800/800",
                "https://picsum.photos/id/195/800/800",
              ],
              "price": 46986.25,
              "salePrice": null,
              "categoryId": 9,
              "comments": [
                {
                  "id": 98,
                  "userName": "Ali R.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 4.7,
                  "date": "2025-02-17T00:00:00",
                },
              ],
            },
            {
              "id": 36,
              "title": "Bluetooth Hoparlör 36",
              "description": "Ev ve ofis kullanımı için mükemmeldir.",
              "code": "PRD-036",
              "images": [
                "https://picsum.photos/id/119/800/800",
                "https://picsum.photos/id/178/800/800",
              ],
              "price": 28589.05,
              "salePrice": null,
              "categoryId": 1,
              "comments": [
                {
                  "id": 101,
                  "userName": "Derya A.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 4.4,
                  "date": "2025-03-24T00:00:00",
                },
              ],
            },
            {
              "id": 37,
              "title": "Kablosuz Kulaklık 37",
              "description":
                  "Günlük kullanım için idealdir ve şık bir görünüme sahiptir.",
              "code": "PRD-037",
              "images": [
                "https://picsum.photos/id/189/800/800",
                "https://picsum.photos/id/189/800/800",
                "https://picsum.photos/id/190/800/800",
                "https://picsum.photos/id/164/800/800",
              ],
              "price": 30755.15,
              "salePrice": 41167.95,
              "categoryId": 6,
              "comments": [
                {
                  "id": 104,
                  "userName": "Tolga B.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 4.0,
                  "date": "2025-01-04T00:00:00",
                },
              ],
            },
            {
              "id": 38,
              "title": "Yoga Matı 38",
              "description":
                  "Modern tasarımı ve yüksek performansıyla öne çıkar.",
              "code": "PRD-038",
              "images": [
                "https://picsum.photos/id/181/800/800",
                "https://picsum.photos/id/136/800/800",
                "https://picsum.photos/id/125/800/800",
                "https://picsum.photos/id/145/800/800",
              ],
              "price": 2375.87,
              "salePrice": 26546.3,
              "categoryId": 6,
              "comments": [
                {
                  "id": 107,
                  "userName": "Gizem T.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 4.5,
                  "date": "2025-01-19T00:00:00",
                },
                {
                  "id": 108,
                  "userName": "Derya A.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 4.7,
                  "date": "2025-03-21T00:00:00",
                },
              ],
            },
            {
              "id": 39,
              "title": "Masa Lambası 39",
              "description":
                  "Kolay taşınabilirlik ve kullanım kolaylığı sunar.",
              "code": "PRD-039",
              "images": [
                "https://picsum.photos/id/147/800/800",
                "https://picsum.photos/id/132/800/800",
                "https://picsum.photos/id/132/800/800",
                "https://picsum.photos/id/176/800/800",
              ],
              "price": 22761.58,
              "salePrice": null,
              "categoryId": 4,
              "comments": [
                {
                  "id": 110,
                  "userName": "Ahmet F.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 3.1,
                  "date": "2025-03-06T00:00:00",
                },
                {
                  "id": 111,
                  "userName": "Serkan Y.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 4.0,
                  "date": "2025-01-23T00:00:00",
                },
              ],
            },
            {
              "id": 40,
              "title": "Masa Lambası 40",
              "description":
                  "Kolay taşınabilirlik ve kullanım kolaylığı sunar.",
              "code": "PRD-040",
              "images": [
                "https://picsum.photos/id/178/800/800",
                "https://picsum.photos/id/140/800/800",
              ],
              "price": 48352.31,
              "salePrice": null,
              "categoryId": 5,
              "comments": [
                {
                  "id": 113,
                  "userName": "Sevgi M.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 3.1,
                  "date": "2025-03-03T00:00:00",
                },
                {
                  "id": 114,
                  "userName": "Seda M.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 4.6,
                  "date": "2025-03-25T00:00:00",
                },
                {
                  "id": 115,
                  "userName": "Tolga B.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 3.6,
                  "date": "2025-01-18T00:00:00",
                },
              ],
            },
            {
              "id": 41,
              "title": "Saç Kurutma Makinesi 41",
              "description":
                  "Günlük kullanım için idealdir ve şık bir görünüme sahiptir.",
              "code": "PRD-041",
              "images": [
                "https://picsum.photos/id/136/800/800",
                "https://picsum.photos/id/126/800/800",
              ],
              "price": 8831.52,
              "salePrice": null,
              "categoryId": 12,
              "comments": [
                {
                  "id": 116,
                  "userName": "Berk T.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 4.2,
                  "date": "2025-03-29T00:00:00",
                },
              ],
            },
            {
              "id": 42,
              "title": "Web Kamera 42",
              "description": "En yeni teknoloji ile donatılmıştır.",
              "code": "PRD-042",
              "images": [
                "https://picsum.photos/id/148/800/800",
                "https://picsum.photos/id/146/800/800",
              ],
              "price": 44536.13,
              "salePrice": null,
              "categoryId": 8,
              "comments": [
                {
                  "id": 119,
                  "userName": "Zeynep T.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 3.9,
                  "date": "2025-01-08T00:00:00",
                },
                {
                  "id": 120,
                  "userName": "Tolga B.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 4.8,
                  "date": "2025-04-27T00:00:00",
                },
              ],
            },
            {
              "id": 43,
              "title": "Saç Kurutma Makinesi 43",
              "description": "Ev ve ofis kullanımı için mükemmeldir.",
              "code": "PRD-043",
              "images": [
                "https://picsum.photos/id/149/800/800",
                "https://picsum.photos/id/110/800/800",
                "https://picsum.photos/id/112/800/800",
                "https://picsum.photos/id/142/800/800",
              ],
              "price": 13292.5,
              "salePrice": 19416.07,
              "categoryId": 6,
              "comments": [
                {
                  "id": 122,
                  "userName": "Burak M.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 4.7,
                  "date": "2025-02-03T00:00:00",
                },
                {
                  "id": 123,
                  "userName": "Tolga B.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 3.8,
                  "date": "2025-03-25T00:00:00",
                },
              ],
            },
            {
              "id": 44,
              "title": "Drone 44",
              "description": "En yeni teknoloji ile donatılmıştır.",
              "code": "PRD-044",
              "images": [
                "https://picsum.photos/id/116/800/800",
                "https://picsum.photos/id/101/800/800",
              ],
              "price": 15274.69,
              "salePrice": null,
              "categoryId": 8,
              "comments": [
                {
                  "id": 125,
                  "userName": "Ayşe Y.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 3.2,
                  "date": "2025-03-06T00:00:00",
                },
                {
                  "id": 126,
                  "userName": "Ali R.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 3.8,
                  "date": "2025-05-01T00:00:00",
                },
                {
                  "id": 127,
                  "userName": "Ozan K.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 4.1,
                  "date": "2025-01-09T00:00:00",
                },
              ],
            },
            {
              "id": 45,
              "title": "Dambıl Seti 45",
              "description": "En yeni teknoloji ile donatılmıştır.",
              "code": "PRD-045",
              "images": [
                "https://picsum.photos/id/164/800/800",
                "https://picsum.photos/id/120/800/800",
                "https://picsum.photos/id/151/800/800",
                "https://picsum.photos/id/139/800/800",
              ],
              "price": 22652.85,
              "salePrice": null,
              "categoryId": 7,
              "comments": [
                {
                  "id": 128,
                  "userName": "Berk T.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 4.0,
                  "date": "2025-04-17T00:00:00",
                },
              ],
            },
            {
              "id": 46,
              "title": "Masa Lambası 46",
              "description": "En yeni teknoloji ile donatılmıştır.",
              "code": "PRD-046",
              "images": [
                "https://picsum.photos/id/121/800/800",
                "https://picsum.photos/id/177/800/800",
                "https://picsum.photos/id/165/800/800",
                "https://picsum.photos/id/169/800/800",
              ],
              "price": 33590.0,
              "salePrice": 35356.82,
              "categoryId": 13,
              "comments": [
                {
                  "id": 131,
                  "userName": "Kerem A.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 3.2,
                  "date": "2025-02-25T00:00:00",
                },
                {
                  "id": 132,
                  "userName": "Emre T.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 3.0,
                  "date": "2025-02-07T00:00:00",
                },
              ],
            },
            {
              "id": 47,
              "title": "Sırt Çantası 47",
              "description": "Ev ve ofis kullanımı için mükemmeldir.",
              "code": "PRD-047",
              "images": [
                "https://picsum.photos/id/136/800/800",
                "https://picsum.photos/id/133/800/800",
                "https://picsum.photos/id/124/800/800",
                "https://picsum.photos/id/137/800/800",
              ],
              "price": 44698.63,
              "salePrice": null,
              "categoryId": 1,
              "comments": [
                {
                  "id": 134,
                  "userName": "Ahmet F.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 4.1,
                  "date": "2025-03-15T00:00:00",
                },
              ],
            },
            {
              "id": 48,
              "title": "Drone 48",
              "description":
                  "Kolay taşınabilirlik ve kullanım kolaylığı sunar.",
              "code": "PRD-048",
              "images": [
                "https://picsum.photos/id/160/800/800",
                "https://picsum.photos/id/199/800/800",
                "https://picsum.photos/id/132/800/800",
                "https://picsum.photos/id/184/800/800",
              ],
              "price": 26592.7,
              "salePrice": null,
              "categoryId": 6,
              "comments": [
                {
                  "id": 137,
                  "userName": "Mert K.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 4.2,
                  "date": "2025-03-01T00:00:00",
                },
                {
                  "id": 138,
                  "userName": "Murat S.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 3.5,
                  "date": "2025-03-08T00:00:00",
                },
                {
                  "id": 139,
                  "userName": "Kerem A.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 4.9,
                  "date": "2025-02-24T00:00:00",
                },
              ],
            },
            {
              "id": 49,
              "title": "Koltuk 49",
              "description":
                  "Günlük kullanım için idealdir ve şık bir görünüme sahiptir.",
              "code": "PRD-049",
              "images": [
                "https://picsum.photos/id/200/800/800",
                "https://picsum.photos/id/180/800/800",
                "https://picsum.photos/id/164/800/800",
              ],
              "price": 26240.63,
              "salePrice": 24750.61,
              "categoryId": 5,
              "comments": [
                {
                  "id": 140,
                  "userName": "Sevgi M.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 3.4,
                  "date": "2025-03-25T00:00:00",
                },
                {
                  "id": 141,
                  "userName": "Selin K.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 3.3,
                  "date": "2025-01-12T00:00:00",
                },
                {
                  "id": 142,
                  "userName": "Gizem T.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 3.2,
                  "date": "2025-03-20T00:00:00",
                },
              ],
            },
            {
              "id": 50,
              "title": "Güneş Gözlüğü 50",
              "description": "En yeni teknoloji ile donatılmıştır.",
              "code": "PRD-050",
              "images": [
                "https://picsum.photos/id/169/800/800",
                "https://picsum.photos/id/196/800/800",
                "https://picsum.photos/id/124/800/800",
                "https://picsum.photos/id/136/800/800",
              ],
              "price": 12729.7,
              "salePrice": null,
              "categoryId": 8,
              "comments": [
                {
                  "id": 143,
                  "userName": "Melis K.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 3.5,
                  "date": "2025-01-24T00:00:00",
                },
              ],
            },
            {
              "id": 51,
              "title": "Dambıl Seti 51",
              "description":
                  "Profesyonel kullanıcılar için özel olarak tasarlanmıştır.",
              "code": "PRD-051",
              "images": [
                "https://picsum.photos/id/212/800/800",
                "https://picsum.photos/id/271/800/800",
              ],
              "price": 20364.3,
              "salePrice": null,
              "categoryId": 1,
              "comments": [
                {
                  "id": 146,
                  "userName": "Tolga B.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 4.8,
                  "date": "2025-04-07T00:00:00",
                },
                {
                  "id": 147,
                  "userName": "Berk T.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 4.3,
                  "date": "2025-02-02T00:00:00",
                },
              ],
            },
            {
              "id": 52,
              "title": "Web Kamera 52",
              "description":
                  "Modern tasarımı ve yüksek performansıyla öne çıkar.",
              "code": "PRD-052",
              "images": [
                "https://picsum.photos/id/219/800/800",
                "https://picsum.photos/id/298/800/800",
                "https://picsum.photos/id/238/800/800",
                "https://picsum.photos/id/273/800/800",
              ],
              "price": 3515.05,
              "salePrice": null,
              "categoryId": 15,
              "comments": [
                {
                  "id": 149,
                  "userName": "Ayşe Y.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 4.3,
                  "date": "2025-04-15T00:00:00",
                },
                {
                  "id": 150,
                  "userName": "Ozan K.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 4.2,
                  "date": "2025-04-26T00:00:00",
                },
                {
                  "id": 151,
                  "userName": "Melis K.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 3.3,
                  "date": "2025-03-24T00:00:00",
                },
              ],
            },
            {
              "id": 53,
              "title": "Kahve Makinesi 53",
              "description":
                  "Modern tasarımı ve yüksek performansıyla öne çıkar.",
              "code": "PRD-053",
              "images": [
                "https://picsum.photos/id/293/800/800",
                "https://picsum.photos/id/227/800/800",
                "https://picsum.photos/id/201/800/800",
                "https://picsum.photos/id/230/800/800",
              ],
              "price": 35754.78,
              "salePrice": null,
              "categoryId": 2,
              "comments": [
                {
                  "id": 152,
                  "userName": "Seda M.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 4.4,
                  "date": "2025-02-27T00:00:00",
                },
                {
                  "id": 153,
                  "userName": "Derya A.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 4.1,
                  "date": "2025-02-24T00:00:00",
                },
                {
                  "id": 154,
                  "userName": "Tolga B.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 3.6,
                  "date": "2025-03-01T00:00:00",
                },
              ],
            },
            {
              "id": 54,
              "title": "Yoga Matı 54",
              "description":
                  "Gelişmiş özellikleriyle dikkat çeken bu ürün, kullanıcı deneyimini en üst düzeye çıkarır.",
              "code": "PRD-054",
              "images": [
                "https://picsum.photos/id/289/800/800",
                "https://picsum.photos/id/294/800/800",
                "https://picsum.photos/id/273/800/800",
                "https://picsum.photos/id/222/800/800",
              ],
              "price": 821.87,
              "salePrice": 8367.81,
              "categoryId": 2,
              "comments": [
                {
                  "id": 155,
                  "userName": "Selin K.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 4.8,
                  "date": "2025-03-03T00:00:00",
                },
                {
                  "id": 156,
                  "userName": "Gizem T.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 4.6,
                  "date": "2025-03-23T00:00:00",
                },
              ],
            },
            {
              "id": 55,
              "title": "Masa Lambası 55",
              "description":
                  "Gelişmiş özellikleriyle dikkat çeken bu ürün, kullanıcı deneyimini en üst düzeye çıkarır.",
              "code": "PRD-055",
              "images": [
                "https://picsum.photos/id/243/800/800",
                "https://picsum.photos/id/230/800/800",
              ],
              "price": 48284.98,
              "salePrice": null,
              "categoryId": 5,
              "comments": [
                {
                  "id": 158,
                  "userName": "Selin K.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 4.6,
                  "date": "2025-01-15T00:00:00",
                },
                {
                  "id": 159,
                  "userName": "Gizem T.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 3.4,
                  "date": "2025-01-19T00:00:00",
                },
              ],
            },
            {
              "id": 56,
              "title": "Halat Seti 56",
              "description":
                  "Modern tasarımı ve yüksek performansıyla öne çıkar.",
              "code": "PRD-056",
              "images": [
                "https://picsum.photos/id/206/800/800",
                "https://picsum.photos/id/286/800/800",
              ],
              "price": 47739.08,
              "salePrice": 28913.97,
              "categoryId": 1,
              "comments": [
                {
                  "id": 161,
                  "userName": "Ozan K.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 4.3,
                  "date": "2025-01-01T00:00:00",
                },
                {
                  "id": 162,
                  "userName": "Melis K.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 3.6,
                  "date": "2025-02-23T00:00:00",
                },
                {
                  "id": 163,
                  "userName": "Gizem T.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 3.8,
                  "date": "2025-03-03T00:00:00",
                },
              ],
            },
            {
              "id": 57,
              "title": "Fotoğraf Makinesi 57",
              "description":
                  "Profesyonel kullanıcılar için özel olarak tasarlanmıştır.",
              "code": "PRD-057",
              "images": [
                "https://picsum.photos/id/292/800/800",
                "https://picsum.photos/id/247/800/800",
                "https://picsum.photos/id/246/800/800",
                "https://picsum.photos/id/280/800/800",
              ],
              "price": 49407.54,
              "salePrice": 23000.55,
              "categoryId": 2,
              "comments": [
                {
                  "id": 164,
                  "userName": "Deniz A.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 3.4,
                  "date": "2025-04-10T00:00:00",
                },
                {
                  "id": 165,
                  "userName": "Burak M.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 4.9,
                  "date": "2025-03-14T00:00:00",
                },
              ],
            },
            {
              "id": 58,
              "title": "Yoga Matı 58",
              "description":
                  "Modern tasarımı ve yüksek performansıyla öne çıkar.",
              "code": "PRD-058",
              "images": [
                "https://picsum.photos/id/260/800/800",
                "https://picsum.photos/id/204/800/800",
              ],
              "price": 5472.59,
              "salePrice": 32159.89,
              "categoryId": 6,
              "comments": [
                {
                  "id": 167,
                  "userName": "Mert K.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 3.9,
                  "date": "2025-02-13T00:00:00",
                },
                {
                  "id": 168,
                  "userName": "Gizem T.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 4.5,
                  "date": "2025-03-23T00:00:00",
                },
              ],
            },
            {
              "id": 59,
              "title": "Güneş Gözlüğü 59",
              "description":
                  "Kolay taşınabilirlik ve kullanım kolaylığı sunar.",
              "code": "PRD-059",
              "images": [
                "https://picsum.photos/id/281/800/800",
                "https://picsum.photos/id/252/800/800",
                "https://picsum.photos/id/281/800/800",
              ],
              "price": 34266.83,
              "salePrice": 10451.49,
              "categoryId": 4,
              "comments": [
                {
                  "id": 170,
                  "userName": "Selin K.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 4.0,
                  "date": "2025-03-12T00:00:00",
                },
                {
                  "id": 171,
                  "userName": "Ozan K.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 4.5,
                  "date": "2025-02-23T00:00:00",
                },
                {
                  "id": 172,
                  "userName": "Melis K.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 4.8,
                  "date": "2025-01-31T00:00:00",
                },
              ],
            },
            {
              "id": 60,
              "title": "Kablosuz Kulaklık 60",
              "description":
                  "Profesyonel kullanıcılar için özel olarak tasarlanmıştır.",
              "code": "PRD-060",
              "images": [
                "https://picsum.photos/id/265/800/800",
                "https://picsum.photos/id/271/800/800",
                "https://picsum.photos/id/244/800/800",
                "https://picsum.photos/id/202/800/800",
              ],
              "price": 7638.15,
              "salePrice": 8668.8,
              "categoryId": 11,
              "comments": [
                {
                  "id": 173,
                  "userName": "Burak M.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 4.7,
                  "date": "2025-01-09T00:00:00",
                },
              ],
            },
            {
              "id": 61,
              "title": "Elektrikli Scooter 61",
              "description":
                  "Kolay taşınabilirlik ve kullanım kolaylığı sunar.",
              "code": "PRD-061",
              "images": [
                "https://picsum.photos/id/213/800/800",
                "https://picsum.photos/id/298/800/800",
                "https://picsum.photos/id/293/800/800",
                "https://picsum.photos/id/295/800/800",
              ],
              "price": 48575.73,
              "salePrice": null,
              "categoryId": 4,
              "comments": [
                {
                  "id": 176,
                  "userName": "Gizem T.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 4.0,
                  "date": "2025-02-17T00:00:00",
                },
                {
                  "id": 177,
                  "userName": "Can Y.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 3.1,
                  "date": "2025-01-11T00:00:00",
                },
              ],
            },
            {
              "id": 62,
              "title": "Akıllı Saat 62",
              "description":
                  "Günlük kullanım için idealdir ve şık bir görünüme sahiptir.",
              "code": "PRD-062",
              "images": [
                "https://picsum.photos/id/291/800/800",
                "https://picsum.photos/id/234/800/800",
                "https://picsum.photos/id/279/800/800",
                "https://picsum.photos/id/236/800/800",
              ],
              "price": 18009.78,
              "salePrice": 27394.5,
              "categoryId": 15,
              "comments": [
                {
                  "id": 179,
                  "userName": "Canan B.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 4.5,
                  "date": "2025-01-05T00:00:00",
                },
              ],
            },
            {
              "id": 63,
              "title": "Oyuncu Klavyesi 63",
              "description":
                  "Modern tasarımı ve yüksek performansıyla öne çıkar.",
              "code": "PRD-063",
              "images": [
                "https://picsum.photos/id/298/800/800",
                "https://picsum.photos/id/234/800/800",
              ],
              "price": 43386.49,
              "salePrice": null,
              "categoryId": 7,
              "comments": [
                {
                  "id": 182,
                  "userName": "Seda M.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 3.2,
                  "date": "2025-04-09T00:00:00",
                },
                {
                  "id": 183,
                  "userName": "Zeynep T.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 3.7,
                  "date": "2025-03-27T00:00:00",
                },
              ],
            },
            {
              "id": 64,
              "title": "Halat Seti 64",
              "description":
                  "Günlük kullanım için idealdir ve şık bir görünüme sahiptir.",
              "code": "PRD-064",
              "images": [
                "https://picsum.photos/id/298/800/800",
                "https://picsum.photos/id/290/800/800",
                "https://picsum.photos/id/289/800/800",
                "https://picsum.photos/id/286/800/800",
              ],
              "price": 4997.65,
              "salePrice": 10270.7,
              "categoryId": 2,
              "comments": [
                {
                  "id": 185,
                  "userName": "Ayşe Y.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 4.5,
                  "date": "2025-02-20T00:00:00",
                },
                {
                  "id": 186,
                  "userName": "Elif N.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 4.7,
                  "date": "2025-02-25T00:00:00",
                },
                {
                  "id": 187,
                  "userName": "Deniz A.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 3.7,
                  "date": "2025-02-19T00:00:00",
                },
              ],
            },
            {
              "id": 65,
              "title": "Termos 65",
              "description":
                  "Profesyonel kullanıcılar için özel olarak tasarlanmıştır.",
              "code": "PRD-065",
              "images": [
                "https://picsum.photos/id/225/800/800",
                "https://picsum.photos/id/247/800/800",
                "https://picsum.photos/id/233/800/800",
                "https://picsum.photos/id/210/800/800",
              ],
              "price": 10331.57,
              "salePrice": null,
              "categoryId": 3,
              "comments": [
                {
                  "id": 188,
                  "userName": "Ali R.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 3.5,
                  "date": "2025-02-25T00:00:00",
                },
                {
                  "id": 189,
                  "userName": "Can Y.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 4.6,
                  "date": "2025-01-18T00:00:00",
                },
              ],
            },
            {
              "id": 66,
              "title": "Termos 66",
              "description":
                  "Kolay taşınabilirlik ve kullanım kolaylığı sunar.",
              "code": "PRD-066",
              "images": [
                "https://picsum.photos/id/299/800/800",
                "https://picsum.photos/id/281/800/800",
                "https://picsum.photos/id/286/800/800",
              ],
              "price": 5631.55,
              "salePrice": null,
              "categoryId": 1,
              "comments": [
                {
                  "id": 191,
                  "userName": "Gizem T.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 3.6,
                  "date": "2025-01-10T00:00:00",
                },
                {
                  "id": 192,
                  "userName": "Mert K.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 4.5,
                  "date": "2025-02-07T00:00:00",
                },
                {
                  "id": 193,
                  "userName": "Murat S.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 3.1,
                  "date": "2025-03-01T00:00:00",
                },
              ],
            },
            {
              "id": 67,
              "title": "Saç Kurutma Makinesi 67",
              "description":
                  "Kolay taşınabilirlik ve kullanım kolaylığı sunar.",
              "code": "PRD-067",
              "images": [
                "https://picsum.photos/id/244/800/800",
                "https://picsum.photos/id/240/800/800",
                "https://picsum.photos/id/202/800/800",
                "https://picsum.photos/id/257/800/800",
              ],
              "price": 37235.03,
              "salePrice": 1116.86,
              "categoryId": 13,
              "comments": [
                {
                  "id": 194,
                  "userName": "Ozan K.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 3.7,
                  "date": "2025-01-01T00:00:00",
                },
              ],
            },
            {
              "id": 68,
              "title": "Kablosuz Kulaklık 68",
              "description":
                  "Modern tasarımı ve yüksek performansıyla öne çıkar.",
              "code": "PRD-068",
              "images": [
                "https://picsum.photos/id/245/800/800",
                "https://picsum.photos/id/287/800/800",
                "https://picsum.photos/id/201/800/800",
                "https://picsum.photos/id/200/800/800",
              ],
              "price": 49614.32,
              "salePrice": 47794.91,
              "categoryId": 11,
              "comments": [
                {
                  "id": 197,
                  "userName": "Burak M.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 3.8,
                  "date": "2025-01-29T00:00:00",
                },
                {
                  "id": 198,
                  "userName": "Sevgi M.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 3.2,
                  "date": "2025-02-08T00:00:00",
                },
              ],
            },
            {
              "id": 69,
              "title": "Bluetooth Hoparlör 69",
              "description": "Ev ve ofis kullanımı için mükemmeldir.",
              "code": "PRD-069",
              "images": [
                "https://picsum.photos/id/280/800/800",
                "https://picsum.photos/id/200/800/800",
                "https://picsum.photos/id/252/800/800",
                "https://picsum.photos/id/296/800/800",
              ],
              "price": 30626.42,
              "salePrice": 24536.21,
              "categoryId": 4,
              "comments": [
                {
                  "id": 200,
                  "userName": "Gizem T.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 3.6,
                  "date": "2025-03-27T00:00:00",
                },
                {
                  "id": 201,
                  "userName": "Deniz A.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 4.9,
                  "date": "2025-02-25T00:00:00",
                },
                {
                  "id": 202,
                  "userName": "Berk T.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 4.1,
                  "date": "2025-04-02T00:00:00",
                },
              ],
            },
            {
              "id": 70,
              "title": "Dizüstü Bilgisayar 70",
              "description":
                  "Kolay taşınabilirlik ve kullanım kolaylığı sunar.",
              "code": "PRD-070",
              "images": [
                "https://picsum.photos/id/230/800/800",
                "https://picsum.photos/id/201/800/800",
              ],
              "price": 34053.11,
              "salePrice": null,
              "categoryId": 13,
              "comments": [
                {
                  "id": 203,
                  "userName": "Elif N.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 4.3,
                  "date": "2025-04-30T00:00:00",
                },
                {
                  "id": 204,
                  "userName": "Sevgi M.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 3.1,
                  "date": "2025-02-05T00:00:00",
                },
                {
                  "id": 205,
                  "userName": "Berk T.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 4.0,
                  "date": "2025-03-02T00:00:00",
                },
              ],
            },
            {
              "id": 71,
              "title": "Fotoğraf Makinesi 71",
              "description":
                  "Kolay taşınabilirlik ve kullanım kolaylığı sunar.",
              "code": "PRD-071",
              "images": [
                "https://picsum.photos/id/247/800/800",
                "https://picsum.photos/id/251/800/800",
              ],
              "price": 34375.75,
              "salePrice": null,
              "categoryId": 4,
              "comments": [
                {
                  "id": 206,
                  "userName": "Emre T.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 3.4,
                  "date": "2025-01-12T00:00:00",
                },
                {
                  "id": 207,
                  "userName": "Tolga B.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 3.6,
                  "date": "2025-02-10T00:00:00",
                },
              ],
            },
            {
              "id": 72,
              "title": "Oyuncu Klavyesi 72",
              "description":
                  "Günlük kullanım için idealdir ve şık bir görünüme sahiptir.",
              "code": "PRD-072",
              "images": [
                "https://picsum.photos/id/265/800/800",
                "https://picsum.photos/id/282/800/800",
                "https://picsum.photos/id/269/800/800",
              ],
              "price": 37816.8,
              "salePrice": 11049.45,
              "categoryId": 2,
              "comments": [
                {
                  "id": 209,
                  "userName": "Serkan Y.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 3.1,
                  "date": "2025-01-11T00:00:00",
                },
              ],
            },
            {
              "id": 73,
              "title": "Akıllı Saat 73",
              "description": "En yeni teknoloji ile donatılmıştır.",
              "code": "PRD-073",
              "images": [
                "https://picsum.photos/id/208/800/800",
                "https://picsum.photos/id/266/800/800",
              ],
              "price": 47344.49,
              "salePrice": null,
              "categoryId": 1,
              "comments": [
                {
                  "id": 212,
                  "userName": "Can Y.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 4.3,
                  "date": "2025-01-21T00:00:00",
                },
              ],
            },
            {
              "id": 74,
              "title": "Kahve Makinesi 74",
              "description":
                  "Günlük kullanım için idealdir ve şık bir görünüme sahiptir.",
              "code": "PRD-074",
              "images": [
                "https://picsum.photos/id/219/800/800",
                "https://picsum.photos/id/279/800/800",
                "https://picsum.photos/id/223/800/800",
                "https://picsum.photos/id/256/800/800",
              ],
              "price": 7287.38,
              "salePrice": null,
              "categoryId": 9,
              "comments": [
                {
                  "id": 215,
                  "userName": "Ayşe Y.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 3.8,
                  "date": "2025-04-15T00:00:00",
                },
              ],
            },
            {
              "id": 75,
              "title": "Web Kamera 75",
              "description":
                  "Modern tasarımı ve yüksek performansıyla öne çıkar.",
              "code": "PRD-075",
              "images": [
                "https://picsum.photos/id/238/800/800",
                "https://picsum.photos/id/279/800/800",
                "https://picsum.photos/id/200/800/800",
                "https://picsum.photos/id/256/800/800",
              ],
              "price": 45796.33,
              "salePrice": 13985.12,
              "categoryId": 9,
              "comments": [
                {
                  "id": 218,
                  "userName": "Seda M.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 3.3,
                  "date": "2025-02-04T00:00:00",
                },
              ],
            },
            {
              "id": 76,
              "title": "Yoga Matı 76",
              "description":
                  "Kolay taşınabilirlik ve kullanım kolaylığı sunar.",
              "code": "PRD-076",
              "images": [
                "https://picsum.photos/id/239/800/800",
                "https://picsum.photos/id/298/800/800",
              ],
              "price": 45121.76,
              "salePrice": 22114.56,
              "categoryId": 10,
              "comments": [
                {
                  "id": 221,
                  "userName": "Canan B.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 4.6,
                  "date": "2025-01-08T00:00:00",
                },
                {
                  "id": 222,
                  "userName": "Emre T.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 4.4,
                  "date": "2025-04-02T00:00:00",
                },
              ],
            },
            {
              "id": 77,
              "title": "Kablosuz Kulaklık 77",
              "description":
                  "Modern tasarımı ve yüksek performansıyla öne çıkar.",
              "code": "PRD-077",
              "images": [
                "https://picsum.photos/id/246/800/800",
                "https://picsum.photos/id/216/800/800",
              ],
              "price": 16892.14,
              "salePrice": 4384.57,
              "categoryId": 2,
              "comments": [
                {
                  "id": 224,
                  "userName": "Zeynep T.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 3.6,
                  "date": "2025-01-19T00:00:00",
                },
                {
                  "id": 225,
                  "userName": "Burak M.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 4.3,
                  "date": "2025-03-28T00:00:00",
                },
                {
                  "id": 226,
                  "userName": "Ayşe Y.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 3.7,
                  "date": "2025-03-06T00:00:00",
                },
              ],
            },
            {
              "id": 78,
              "title": "Kamp Çadırı 78",
              "description":
                  "Gelişmiş özellikleriyle dikkat çeken bu ürün, kullanıcı deneyimini en üst düzeye çıkarır.",
              "code": "PRD-078",
              "images": [
                "https://picsum.photos/id/272/800/800",
                "https://picsum.photos/id/273/800/800",
                "https://picsum.photos/id/286/800/800",
              ],
              "price": 5325.27,
              "salePrice": null,
              "categoryId": 8,
              "comments": [
                {
                  "id": 227,
                  "userName": "Canan B.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 3.4,
                  "date": "2025-01-22T00:00:00",
                },
              ],
            },
            {
              "id": 79,
              "title": "Termos 79",
              "description":
                  "Profesyonel kullanıcılar için özel olarak tasarlanmıştır.",
              "code": "PRD-079",
              "images": [
                "https://picsum.photos/id/270/800/800",
                "https://picsum.photos/id/230/800/800",
                "https://picsum.photos/id/233/800/800",
                "https://picsum.photos/id/217/800/800",
              ],
              "price": 22787.39,
              "salePrice": 31138.27,
              "categoryId": 11,
              "comments": [
                {
                  "id": 230,
                  "userName": "Zeynep T.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 3.0,
                  "date": "2025-02-10T00:00:00",
                },
              ],
            },
            {
              "id": 80,
              "title": "Dizüstü Bilgisayar 80",
              "description": "Ev ve ofis kullanımı için mükemmeldir.",
              "code": "PRD-080",
              "images": [
                "https://picsum.photos/id/202/800/800",
                "https://picsum.photos/id/292/800/800",
                "https://picsum.photos/id/254/800/800",
              ],
              "price": 28869.18,
              "salePrice": null,
              "categoryId": 11,
              "comments": [
                {
                  "id": 233,
                  "userName": "Deniz A.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 4.6,
                  "date": "2025-04-03T00:00:00",
                },
                {
                  "id": 234,
                  "userName": "Zeynep T.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 3.8,
                  "date": "2025-03-22T00:00:00",
                },
              ],
            },
            {
              "id": 81,
              "title": "Sırt Çantası 81",
              "description":
                  "Günlük kullanım için idealdir ve şık bir görünüme sahiptir.",
              "code": "PRD-081",
              "images": [
                "https://picsum.photos/id/249/800/800",
                "https://picsum.photos/id/227/800/800",
                "https://picsum.photos/id/209/800/800",
              ],
              "price": 2219.27,
              "salePrice": 31770.28,
              "categoryId": 3,
              "comments": [
                {
                  "id": 236,
                  "userName": "Serkan Y.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 3.3,
                  "date": "2025-01-04T00:00:00",
                },
                {
                  "id": 237,
                  "userName": "Murat S.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 4.8,
                  "date": "2025-03-16T00:00:00",
                },
              ],
            },
            {
              "id": 82,
              "title": "Yoga Matı 82",
              "description":
                  "Modern tasarımı ve yüksek performansıyla öne çıkar.",
              "code": "PRD-082",
              "images": [
                "https://picsum.photos/id/234/800/800",
                "https://picsum.photos/id/244/800/800",
                "https://picsum.photos/id/249/800/800",
              ],
              "price": 15060.92,
              "salePrice": null,
              "categoryId": 11,
              "comments": [
                {
                  "id": 239,
                  "userName": "Mert K.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 3.6,
                  "date": "2025-01-09T00:00:00",
                },
                {
                  "id": 240,
                  "userName": "Gizem T.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 4.8,
                  "date": "2025-03-15T00:00:00",
                },
              ],
            },
            {
              "id": 83,
              "title": "Akıllı Saat 83",
              "description":
                  "Modern tasarımı ve yüksek performansıyla öne çıkar.",
              "code": "PRD-083",
              "images": [
                "https://picsum.photos/id/288/800/800",
                "https://picsum.photos/id/236/800/800",
              ],
              "price": 36389.18,
              "salePrice": null,
              "categoryId": 3,
              "comments": [
                {
                  "id": 242,
                  "userName": "Sevgi M.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 4.7,
                  "date": "2025-04-01T00:00:00",
                },
                {
                  "id": 243,
                  "userName": "Ozan K.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 4.6,
                  "date": "2025-03-07T00:00:00",
                },
                {
                  "id": 244,
                  "userName": "Canan B.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 4.4,
                  "date": "2025-02-18T00:00:00",
                },
              ],
            },
            {
              "id": 84,
              "title": "Elektrikli Scooter 84",
              "description":
                  "Kolay taşınabilirlik ve kullanım kolaylığı sunar.",
              "code": "PRD-084",
              "images": [
                "https://picsum.photos/id/202/800/800",
                "https://picsum.photos/id/208/800/800",
                "https://picsum.photos/id/235/800/800",
                "https://picsum.photos/id/264/800/800",
              ],
              "price": 31398.6,
              "salePrice": 20684.33,
              "categoryId": 5,
              "comments": [
                {
                  "id": 245,
                  "userName": "Derya A.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 4.7,
                  "date": "2025-01-21T00:00:00",
                },
                {
                  "id": 246,
                  "userName": "Ali R.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 4.8,
                  "date": "2025-04-04T00:00:00",
                },
                {
                  "id": 247,
                  "userName": "Elif N.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 4.5,
                  "date": "2025-03-27T00:00:00",
                },
              ],
            },
            {
              "id": 85,
              "title": "Dambıl Seti 85",
              "description": "En yeni teknoloji ile donatılmıştır.",
              "code": "PRD-085",
              "images": [
                "https://picsum.photos/id/274/800/800",
                "https://picsum.photos/id/253/800/800",
              ],
              "price": 17556.67,
              "salePrice": 33853.36,
              "categoryId": 5,
              "comments": [
                {
                  "id": 248,
                  "userName": "Melis K.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 3.7,
                  "date": "2025-01-29T00:00:00",
                },
                {
                  "id": 249,
                  "userName": "Ozan K.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 3.6,
                  "date": "2025-04-15T00:00:00",
                },
              ],
            },
            {
              "id": 86,
              "title": "Elektrikli Süpürge 86",
              "description":
                  "Modern tasarımı ve yüksek performansıyla öne çıkar.",
              "code": "PRD-086",
              "images": [
                "https://picsum.photos/id/223/800/800",
                "https://picsum.photos/id/300/800/800",
                "https://picsum.photos/id/252/800/800",
                "https://picsum.photos/id/287/800/800",
              ],
              "price": 4769.6,
              "salePrice": null,
              "categoryId": 10,
              "comments": [
                {
                  "id": 251,
                  "userName": "Ali R.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 3.2,
                  "date": "2025-02-24T00:00:00",
                },
              ],
            },
            {
              "id": 87,
              "title": "Web Kamera 87",
              "description": "En yeni teknoloji ile donatılmıştır.",
              "code": "PRD-087",
              "images": [
                "https://picsum.photos/id/279/800/800",
                "https://picsum.photos/id/216/800/800",
                "https://picsum.photos/id/293/800/800",
              ],
              "price": 31785.07,
              "salePrice": null,
              "categoryId": 8,
              "comments": [
                {
                  "id": 254,
                  "userName": "Sevgi M.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 3.1,
                  "date": "2025-03-24T00:00:00",
                },
                {
                  "id": 255,
                  "userName": "Tolga B.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 3.4,
                  "date": "2025-04-26T00:00:00",
                },
                {
                  "id": 256,
                  "userName": "Elif N.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 4.1,
                  "date": "2025-04-20T00:00:00",
                },
              ],
            },
            {
              "id": 88,
              "title": "Çanta 88",
              "description": "En yeni teknoloji ile donatılmıştır.",
              "code": "PRD-088",
              "images": [
                "https://picsum.photos/id/232/800/800",
                "https://picsum.photos/id/223/800/800",
                "https://picsum.photos/id/227/800/800",
                "https://picsum.photos/id/283/800/800",
              ],
              "price": 46900.09,
              "salePrice": 6856.74,
              "categoryId": 12,
              "comments": [
                {
                  "id": 257,
                  "userName": "Derya A.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 4.9,
                  "date": "2025-03-15T00:00:00",
                },
                {
                  "id": 258,
                  "userName": "Kerem A.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 4.5,
                  "date": "2025-02-21T00:00:00",
                },
                {
                  "id": 259,
                  "userName": "Melis K.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 4.3,
                  "date": "2025-04-01T00:00:00",
                },
              ],
            },
            {
              "id": 89,
              "title": "Fotoğraf Makinesi 89",
              "description": "En yeni teknoloji ile donatılmıştır.",
              "code": "PRD-089",
              "images": [
                "https://picsum.photos/id/245/800/800",
                "https://picsum.photos/id/260/800/800",
              ],
              "price": 45521.69,
              "salePrice": null,
              "categoryId": 8,
              "comments": [
                {
                  "id": 260,
                  "userName": "Elif N.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 3.2,
                  "date": "2025-01-24T00:00:00",
                },
                {
                  "id": 261,
                  "userName": "Ozan K.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 4.2,
                  "date": "2025-02-24T00:00:00",
                },
                {
                  "id": 262,
                  "userName": "Elif N.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 3.6,
                  "date": "2025-02-17T00:00:00",
                },
              ],
            },
            {
              "id": 90,
              "title": "Güneş Gözlüğü 90",
              "description":
                  "Kolay taşınabilirlik ve kullanım kolaylığı sunar.",
              "code": "PRD-090",
              "images": [
                "https://picsum.photos/id/208/800/800",
                "https://picsum.photos/id/217/800/800",
                "https://picsum.photos/id/268/800/800",
              ],
              "price": 26247.52,
              "salePrice": null,
              "categoryId": 7,
              "comments": [
                {
                  "id": 263,
                  "userName": "Ahmet F.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 4.7,
                  "date": "2025-01-30T00:00:00",
                },
                {
                  "id": 264,
                  "userName": "Mert K.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 4.1,
                  "date": "2025-03-20T00:00:00",
                },
                {
                  "id": 265,
                  "userName": "Zeynep T.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 4.6,
                  "date": "2025-01-15T00:00:00",
                },
              ],
            },
            {
              "id": 91,
              "title": "Drone 91",
              "description": "En yeni teknoloji ile donatılmıştır.",
              "code": "PRD-091",
              "images": [
                "https://picsum.photos/id/265/800/800",
                "https://picsum.photos/id/239/800/800",
                "https://picsum.photos/id/212/800/800",
              ],
              "price": 19458.0,
              "salePrice": 28355.18,
              "categoryId": 14,
              "comments": [
                {
                  "id": 266,
                  "userName": "Tolga B.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 4.7,
                  "date": "2025-03-24T00:00:00",
                },
              ],
            },
            {
              "id": 92,
              "title": "Saç Kurutma Makinesi 92",
              "description":
                  "Kolay taşınabilirlik ve kullanım kolaylığı sunar.",
              "code": "PRD-092",
              "images": [
                "https://picsum.photos/id/226/800/800",
                "https://picsum.photos/id/300/800/800",
              ],
              "price": 34570.2,
              "salePrice": null,
              "categoryId": 2,
              "comments": [
                {
                  "id": 269,
                  "userName": "Seda M.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 4.7,
                  "date": "2025-02-17T00:00:00",
                },
                {
                  "id": 270,
                  "userName": "Ozan K.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 4.0,
                  "date": "2025-01-28T00:00:00",
                },
                {
                  "id": 271,
                  "userName": "Ozan K.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 4.9,
                  "date": "2025-03-30T00:00:00",
                },
              ],
            },
            {
              "id": 93,
              "title": "Yoga Matı 93",
              "description": "En yeni teknoloji ile donatılmıştır.",
              "code": "PRD-093",
              "images": [
                "https://picsum.photos/id/268/800/800",
                "https://picsum.photos/id/212/800/800",
              ],
              "price": 46677.89,
              "salePrice": null,
              "categoryId": 2,
              "comments": [
                {
                  "id": 272,
                  "userName": "Emre T.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 3.2,
                  "date": "2025-04-19T00:00:00",
                },
              ],
            },
            {
              "id": 94,
              "title": "Sırt Çantası 94",
              "description":
                  "Günlük kullanım için idealdir ve şık bir görünüme sahiptir.",
              "code": "PRD-094",
              "images": [
                "https://picsum.photos/id/247/800/800",
                "https://picsum.photos/id/234/800/800",
                "https://picsum.photos/id/254/800/800",
              ],
              "price": 15159.55,
              "salePrice": null,
              "categoryId": 6,
              "comments": [
                {
                  "id": 275,
                  "userName": "Emre T.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 3.9,
                  "date": "2025-01-13T00:00:00",
                },
                {
                  "id": 276,
                  "userName": "Burak M.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 4.3,
                  "date": "2025-03-07T00:00:00",
                },
              ],
            },
            {
              "id": 95,
              "title": "Güneş Gözlüğü 95",
              "description":
                  "Günlük kullanım için idealdir ve şık bir görünüme sahiptir.",
              "code": "PRD-095",
              "images": [
                "https://picsum.photos/id/291/800/800",
                "https://picsum.photos/id/299/800/800",
                "https://picsum.photos/id/231/800/800",
                "https://picsum.photos/id/214/800/800",
              ],
              "price": 3145.24,
              "salePrice": null,
              "categoryId": 14,
              "comments": [
                {
                  "id": 278,
                  "userName": "Murat S.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 3.8,
                  "date": "2025-01-03T00:00:00",
                },
                {
                  "id": 279,
                  "userName": "Emre T.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 4.5,
                  "date": "2025-01-20T00:00:00",
                },
                {
                  "id": 280,
                  "userName": "Burak M.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 4.8,
                  "date": "2025-01-12T00:00:00",
                },
              ],
            },
            {
              "id": 96,
              "title": "Bluetooth Hoparlör 96",
              "description": "Ev ve ofis kullanımı için mükemmeldir.",
              "code": "PRD-096",
              "images": [
                "https://picsum.photos/id/285/800/800",
                "https://picsum.photos/id/240/800/800",
              ],
              "price": 16758.95,
              "salePrice": 41674.26,
              "categoryId": 3,
              "comments": [
                {
                  "id": 281,
                  "userName": "Sevgi M.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 4.2,
                  "date": "2025-02-22T00:00:00",
                },
                {
                  "id": 282,
                  "userName": "Seda M.",
                  "text": "Çok kullanışlı ve kaliteli.",
                  "rating": 4.3,
                  "date": "2025-03-13T00:00:00",
                },
              ],
            },
            {
              "id": 97,
              "title": "Dambıl Seti 97",
              "description":
                  "Günlük kullanım için idealdir ve şık bir görünüme sahiptir.",
              "code": "PRD-097",
              "images": [
                "https://picsum.photos/id/265/800/800",
                "https://picsum.photos/id/203/800/800",
              ],
              "price": 19893.71,
              "salePrice": null,
              "categoryId": 3,
              "comments": [
                {
                  "id": 284,
                  "userName": "Burak M.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 3.5,
                  "date": "2025-03-09T00:00:00",
                },
              ],
            },
            {
              "id": 98,
              "title": "Yoga Matı 98",
              "description":
                  "Modern tasarımı ve yüksek performansıyla öne çıkar.",
              "code": "PRD-098",
              "images": [
                "https://picsum.photos/id/201/800/800",
                "https://picsum.photos/id/272/800/800",
              ],
              "price": 15595.17,
              "salePrice": null,
              "categoryId": 6,
              "comments": [
                {
                  "id": 287,
                  "userName": "Derya A.",
                  "text": "Kurulumu kolay ve kullanımı pratik.",
                  "rating": 4.5,
                  "date": "2025-02-05T00:00:00",
                },
              ],
            },
            {
              "id": 99,
              "title": "Kamp Çadırı 99",
              "description":
                  "Profesyonel kullanıcılar için özel olarak tasarlanmıştır.",
              "code": "PRD-099",
              "images": [
                "https://picsum.photos/id/293/800/800",
                "https://picsum.photos/id/300/800/800",
              ],
              "price": 26835.19,
              "salePrice": 38487.27,
              "categoryId": 3,
              "comments": [
                {
                  "id": 290,
                  "userName": "Mert K.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 3.9,
                  "date": "2025-02-04T00:00:00",
                },
                {
                  "id": 291,
                  "userName": "Seda M.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 4.0,
                  "date": "2025-01-25T00:00:00",
                },
                {
                  "id": 292,
                  "userName": "Melis K.",
                  "text": "Fiyat/performans ürünü.",
                  "rating": 4.5,
                  "date": "2025-04-24T00:00:00",
                },
              ],
            },
            {
              "id": 100,
              "title": "Masa Lambası 100",
              "description":
                  "Günlük kullanım için idealdir ve şık bir görünüme sahiptir.",
              "code": "PRD-100",
              "images": [
                "https://picsum.photos/id/223/800/800",
                "https://picsum.photos/id/261/800/800",
              ],
              "price": 17031.48,
              "salePrice": 39410.34,
              "categoryId": 15,
              "comments": [
                {
                  "id": 293,
                  "userName": "Emre T.",
                  "text": "Tasarımı harika, çok beğendim.",
                  "rating": 3.7,
                  "date": "2025-03-24T00:00:00",
                },
                {
                  "id": 294,
                  "userName": "Serkan Y.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 3.4,
                  "date": "2025-04-08T00:00:00",
                },
                {
                  "id": 295,
                  "userName": "Derya A.",
                  "text": "Beklediğimden daha iyi çıktı.",
                  "rating": 3.0,
                  "date": "2025-03-19T00:00:00",
                },
              ],
            },
          ],
        });

      case Keys.apiUrlOnboarding:
        return GenericApiResponse.fromMap({
          "statusCode": 200,
          "success": true,
          "data": [
            {
              "id": 1,
              "title": "Hoş Geldiniz",
              "description":
                  "A.A E-Commerce'e hoş geldiniz! Binlerce ürün arasından seçim yaparak alışverişin keyfini çıkarın.",
              "imageUrl": "https://picsum.photos/id/1/800/800",
              "backgroundColor": "#3F51B5",
            },
            {
              "id": 2,
              "title": "Kolay Alışveriş",
              "description":
                  "Kullanıcı dostu arayüzümüz ile istediğiniz ürünü hızlıca bulun ve sepetinize ekleyin.",
              "imageUrl": "https://picsum.photos/id/20/800/800",
              "backgroundColor": "#FF9800",
            },
            {
              "id": 3,
              "title": "Güvenli Ödeme",
              "description":
                  "Çeşitli ödeme seçenekleri ile güvenli bir şekilde alışverişinizi tamamlayın.",
              "imageUrl": "https://picsum.photos/id/30/800/800",
              "backgroundColor": "#009688",
            },
            {
              "id": 4,
              "title": "Hızlı Teslimat",
              "description":
                  "Siparişleriniz en kısa sürede hazırlanıp adresinize teslim edilir.",
              "imageUrl": "https://picsum.photos/id/40/800/800",
              "backgroundColor": "#E91E63",
            },
            {
              "id": 5,
              "title": "Başlayalım",
              "description":
                  "Hemen üye olun veya misafir olarak devam edin ve alışverişe başlayın!",
              "imageUrl": "https://picsum.photos/id/50/800/800",
              "backgroundColor": "#4CAF50",
            },
          ],
        });

      default:
        return GenericApiResponse(
          success: false,
          statusCode: 404,
          message: 'Not Found',
          errors: [],
        );
    }
    //
  }

  // post
}
