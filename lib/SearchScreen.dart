import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final List<Map<String, dynamic>> products = [
    {
      'title': 'Samsung Galaxy Z',
      'price': 99.990,
      'image': 'assets/z fold.png',
      'platform': 'amazon',
      'url': 'https://www.amazon.in/Samsung-Graygreen-Storage-Additional-Exchange/dp/B0B8S82751/ref=sr_1_4?crid=1MXIEF3ABLW20&dib=eyJ2IjoiMSJ9.Vb4rr9skH8q_lh0U-Fvo4-_BVoF3XuW55GhQKPlzwTL6eUWXcx-pariXqsZHpSGrtRYNXNcaZW76PpsqIywGJufRF-clfTu0fg3kI8f7AoRzzFbHvo0WYd5VbHA_vGigiwIpykx_5kVhdpWvENQNmA8ZzQL1bsX5c3eI8gOZDNWgOwQm8wUGO0R98yE6ngHVVawLU5cLk0c7ccndO-y8QtfbpufLF_UzfYFS42WTs-Q.1TEoTQ-WwlSxkcsIrjWTXxqG3dZTAf3hY8xF0xXdn4Q&dib_tag=se&keywords=samsung+z+fold&nsdOptOutParam=true&qid=1734680028&sprefix=samsang+z+fo%2Caps%2C312&sr=8-4'
    },
    {
      'title': 'Samsung Galaxy Z',
      'price': 1.54999,
      'image': 'assets/z fold.png',
      'platform': 'Flipkart',
      'url': 'https://www.flipkart.com/samsung-galaxy-z-fold5-phantom-black-512-gb/p/itm4d14abce6dc2f?pid=MOBGRS32ZV6ZDPKB&lid=LSTMOBGRS32ZV6ZDPKBLCLWYJ&marketplace=FLIPKART&q=samasang+z+fold&store=tyy%2F4io&srno=s_1_9&otracker=search&otracker1=search&fm=Search&iid=ec0f5716-ba6b-487d-ad8c-e732928009ed.MOBGRS32ZV6ZDPKB.SEARCH&ppt=sp&ppn=sp&ssid=ryv2orejsw0000001734680524077&qH=ba6456e1eb9c9f78'
    },
    {
      'title': 'I phone 13',
      'price': 45490,
      'image': 'assets/iphone.jpg',
      'platform': 'Amazon',
      'url': 'https://www.amazon.in/Apple-iPhone-13-128GB-Starlight/dp/B09G9D8KRQ/ref=sr_1_2?crid=1K1YX88XJZH2O&dib=eyJ2IjoiMSJ9.OCoJgZ8ghdguKvc7Ozmt3KlC0a5KB5Cw1Z8vR-gHUKZbM4WteheaXp92tIbekf_DEAbn6czgNK8Bfz-ouzadHg-s-KObUrN3eKmr_OgrtFuDqENiVHaJBdnVslVaaNtxoq6baPSOssR1mx08Z8FYzPpyeJzqGfAp3RiXzP9lwVkzhgw1wzTPqFx8NNw4QH4sYVFOREQvkdAS679srbLVmA6VHX9Rnx8ENsbbWDiN2n8.P8JLi9Publo7lqBGJKZw96Hx3NFYTrd5hvqSti8hZCo&dib_tag=se&keywords=i+phone&qid=1734680696&sprefix=i+pho%2Caps%2C351&sr=8-2'
    },
    {
      'title': 'I phone 13',
      'price': 59900,
      'image': 'assets/iphone.jpg',
      'platform': 'Flipkart',
      'url': 'https://www.amazon.in/Apple-iPhone-13-128GB-Starlight/dp/B09G9D8KRQ/ref=sr_1_2?crid=1K1YX88XJZH2O&dib=eyJ2IjoiMSJ9.OCoJgZ8ghdguKvc7Ozmt3KlC0a5KB5Cw1Z8vR-gHUKZbM4WteheaXp92tIbekf_DEAbn6czgNK8Bfz-ouzadHg-s-KObUrN3eKmr_OgrtFuDqENiVHaJBdnVslVaaNtxoq6baPSOssR1mx08Z8FYzPpyeJzqGfAp3RiXzP9lwVkzhgw1wzTPqFx8NNw4QH4sYVFOREQvkdAS679srbLVmA6VHX9Rnx8ENsbbWDiN2n8.P8JLi9Publo7lqBGJKZw96Hx3NFYTrd5hvqSti8hZCo&dib_tag=se&keywords=i+phone&qid=1734680696&sprefix=i+pho%2Caps%2C351&sr=8-2'
    },
     {
      'title': 'Sony Speaker',
      'price': 3989,
      'image': 'assets/sony.jpg',
      'platform': 'amazon',
      'url': 'https://www.amazon.in/Sony-Lightweight-Super-Compact-Extra-Durable-Calling-Gray/dp/B0C296VD7T/ref=sr_1_7?crid=16QJVHFVAT1V9&dib=eyJ2IjoiMSJ9.1pmsY4qN3eeurVb2OAckaT5km1Fzjbwh5Pls4LoXsP20cp-dMIvH5rp1ELpDQfONPaOZqnUIniylfze0I4SPO4tvd1rU5sCpFr4mb0hDohSGtfcJ_y6_Tt1x0HEuuyFtL2mfcH3fOaE7U97vmDRaO2owunjsHhxlZMv79QSlAXvko4bmltuKWvR9kCGTfQ_zev-2YwT-jzh6UjvqzY3sS0dg0dSYeR9l-TvAHjwbH3Y.C4rYJyLdCL828bl-qH5Cl04uk042lB1cMIwdfXce3FE&dib_tag=se&keywords=sony+speaker&nsdOptOutParam=true&qid=1734680914&sprefix=sony+speake%2Caps%2C297&sr=8-7'
    },
    {
      'title': 'Sony Speaker',
      'price': 4000,
      'image': 'assets/sony.jpg',
      'platform': 'Flipkart',
      'url': ''
    },
    {
      'title': 'Watch',
      'price': 578,
      'image': 'assets/watch.jpg',
      'platform': 'Amazon',
      'url': 'https://www.amazon.in/Like-Beautiful-Bluetooth-Calling-Interactions/dp/B0CV9TQQC9/ref=sr_1_10?crid=2LCHGSC78F9UR&dib=eyJ2IjoiMSJ9.jzzA9oP9RG1tFAaEq9CWnbLTaitoGbfhwEnylcv5fN3SXEBglQMpoEo53a-y8AzJZzTfIgzsHU8B1Gaogxb5BkEz2FKTNE3yW4tSk9sgM02IXn_1Dd-x3vvvQc_3hnMHBnIsIl23IJG8ZtTrM-ovmDrqTVx4hSdencwM-d2TvqC-d1kZPaguokOOIFXi_1vblxWz03f6domi1SzzgCJth_yBCY0ItcCdAevVrOwejSMTfN5mmpvX0nae4rqOXHqHuQ-CAkgyz5JjJxm3kd9xAYuaq3zAoUrPgA_iIbdw3n8.fk7l8uHCgds8CT34Ewvczn2m41-EU7XVfanBeT6Dr_A&dib_tag=se&keywords=watch&qid=1734681050&sprefix=watc%2Caps%2C304&sr=8-10'
    },
     {
      'title': 'Watch',
      'price': 400,
      'image': 'assets/watch.jpg',
      'platform': 'Flipkart',
      'url': ''
    },
    {
      'title': 'us plolo shirt',
      'price': 1218,
      'image': 'assets/us plolo.png',
      'platform': 'amazon',
      'url': 'https://www.amazon.in/U-S-POLO-ASSN-Regular-USSHTO2709A_Navy/dp/B0D28ZK182/ref=sr_1_2?crid=1EMF8DCEEI7BX&dib=eyJ2IjoiMSJ9.su1HHaTcNEPXX7DLuoyj2UGFjrZMAaQP7mjuGQZEO0slg9M_Aue2hUJabBgYkadgvRn2R24v8WoNECkDwWgsaxW0-pieXTjvfaGHuzNA38pVSNt8CWqGp-AQK_2swzZhmcJu8eI2qKZ5PtVd4vLqGFVj2JERWO1NeP0PKmzQlM7Tb-Rv2SxKKiy6aW1HjCSMFjCYNH9btfuRxrHp_Yowzn4wqEO67tmlSEPJLo7sT5u-egEtiSD-rU7iu7zHS5FsNF-VNf-6VLrb5OTev7hi1uH7apzp0zEuVdijLD9OPwo.s3nBQGaKcVXV8V5yKqkss4vEHHvEUmlgNarPYLfv8HU&dib_tag=se&keywords=us+polo+shirt&nsdOptOutParam=true&qid=1734681186&sprefix=us+plolo+shir%2Caps%2C296&sr=8-2'
    },
    {
      'title': 'us plolo shirt',
      'price': 2000,
      'image': 'assets/us plolo.png',
      'platform': 'Flipkart',
      'url': ''
    },
    {
      'title': 'Puma T shirt',
      'price': 759,
      'image': 'assets/puma.webp',
      'platform': 'Amazon',
      'url': 'https://www.amazon.in/Puma-Mens-Solid-T-Shirt-680817_Black/dp/B0CCNSSQXF/ref=sr_1_1?crid=24VY32BSYJ00V&dib=eyJ2IjoiMSJ9.nSJJAhgZHhqHwHSlpWLxZ5pVJIntfAkon7ajzmKGxSmo1lyVU7xV2qkcS-Il8QDhwez9lVj2OhZLB9Enm3-F2tzLRbuvUIVxjQlEbYcNg1Ru19qBhYtyohFGvKxeH3B-e9sCceiYiCkGaJW1U_iXyRcNZkNL5bLmG-oPS3PGFhDwMkTL4UIDGjY4-6GqeFuVp8Gr4zM0cyn01kBuU8Gulg1Iz_AMfBqvORIbKrmVNOtlUYVYXLImNCSRkr1y-Xz7wwo2y8K5XFNxGvzXCdo3S5tMJtJef0IdhO0C4MoY1P0.-eVn3dU9xPDRUm-yuHDcDGop2oHR0-lMlhmHjAwbeVc&dib_tag=se&keywords=puma+t+shirt&nsdOptOutParam=true&qid=1734681289&sprefix=puma+t+shir%2Caps%2C301&sr=8-1'
    },
    {
      'title': 'us plolo shirt',
      'price': 1500,
      'image': 'assets/puma.webp',
      'platform': 'Flipkart',
      'url': ''
    },
    {
      'title': 'Whirlpool 8 Kg',
      'price': 38000,
      'image': 'assets/washing.jpeg',
      'platform': 'Amazon',
      'url': 'https://www.amazon.in/Whirlpool-Inverter-Automatic-XS8014BYM52E-Technology/dp/B0CVX9XD11/ref=sr_1_2_sspa?crid=2TEIB69EFE435&dib=eyJ2IjoiMSJ9.xfswQE1lvuKxDNMYsbzTFs4bA-T4zhi_hzHGD438o01m4J6RfWgEKawFtEScobHrzY-Ki_hiqKGmSZj0wdz2hQ9Z8xebF-pBrKSFnIBg3uq6O-1nzcUiYw9ODqeKz_nWW4eBfp8prrJyi2Z1tNZ9y7bqKkCjj19Bdket80kcBti8RLaPDc9M2hEzvyA9ZvYisWrWLr6rcOcaEAa2WScls86zpUYZulWHluuuaIshVGc.sXmoSek8jlDHpN2v1jPlFbmwI3bPS5lXDHTLDlB7kFc&dib_tag=se&keywords=washing+machine&qid=1734681421&sprefix=washing+mashi%2Caps%2C407&sr=8-2-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1'
    },
     {
      'title': 'Whirlpool 8 Kg',
      'price': 40000,
      'image': 'assets/washing.jpeg',
      'platform': 'Flipkart',
      'url': ''
    },
     {
      'title': 'nike shoees',
      'price': 3500,
      'image': 'assets/nike.png',
      'platform': 'amazon',
      'url': 'https://www.amazon.in/Nike-Revolution-Running-Shoes-Black/dp/B0C8THZMZW/ref=sr_1_2?crid=31COWBIVU64NB&dib=eyJ2IjoiMSJ9.1d3xaT7eea-htRr_ZoWR1U2DEJ9D7nz5MX8aoq3TT1nB9hRgIzigzkj9CapB7qxwa9MJs9K6CnTzbvq21v1H6c_G1TpT0mXKEgobJYFike4u4yubqOsmXObiArc-OES-EfQHALllZ1PninxBn-FAGCzBgNa2x9QWOeQQtmmglumwIwp-7vuum_gcUmC0-oBEPdT4lx99T6qMjEFtjUoGYbq8pDzIBKwHNPJ0dCLM3yqVtJlgDRbWmjVAiH3XK8_s4Afs_jcqW0xFsh96UDyIe16ahApKXpSqxZfo69tUdL0.b6jjbSv2mZGMrSqiltPU6lAgoz3S1WL3yugkPnMdyZY&dib_tag=se&keywords=nike+shoes&nsdOptOutParam=true&qid=1734681554&sprefix=nike+shoe%2Caps%2C307&sr=8-2'
    },
    {
      'title': 'nike shoees',
      'price': 4000,
      'image': 'assets/nike.png',
      'platform': 'Flipkart',
      'url': ''
    },
    {
      'title': 'hoodie',
      'price': 899,
      'image': 'assets/hoodie.webp',
      'platform': 'amazon',
      'url': 'https://www.amazon.in/Boldfit-Hoodies-Stylish-Sweatshirt-Pullover/dp/B0DL64GR2Q/ref=sr_1_2_sspa?crid=X0YW1FZMW8M6&dib=eyJ2IjoiMSJ9.QHC8h0TJMKHoImxm7cig0gqbOtIakgW-NIbompiLJpQv3MY16QUeA-RbXG0t2vTZx_p1EZOBYIs3DpVSGy0rq21EAwWKLe3b3L6KJue3zbCnz2Mf1y73y0UUtUQs-QvbBdxujq2-FheM7mN-QTvkOn3-ua4HpkGoodlk11zxDn5LVPX42f4LMYd3QD7rmu5ct7LZkZCZhoWgyVD1YDVRH71lDAp9j4tA62Z3eJopAtFd45_gmRSVMYKTP8A_H6ihcHQQ-YY-_guYc385-eFxAqQIiM8XsmMY_n-PWngMx1w.l5gafslcASAa5LQE4Pf5IX-PTsau_lIkJUG-auH4gp8&dib_tag=se&keywords=hoodie&qid=1734681653&sprefix=hoodi%2Caps%2C358&sr=8-2-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1'
    },
    {
      'title': 'hoodie',
      'price': 1000,
      'image': 'assets/hoodie.webp',
      'platform': 'Flipkart',
      'url': ''
    },
     {
      'title': 'glass',
      'price': 749,
      'image': 'assets/glass.jpeg',
      'platform': 'Amazon',
      'url': 'https://www.amazon.in/Fastrack-protected-Sunglasses-P358BK2-millimeters/dp/B071CY7ZGM/ref=sr_1_2_sspa?crid=N3REP2TCAQHH&dib=eyJ2IjoiMSJ9.AayRjMwL033Y0BdpFSjw5qVqLI-c7PWsw7q4NK65bee9GIdJntCus9arQ2zTST-e1laXZqT-GsKdADFrN4F6eZ2UBF0Uyvz7eNtNxtReZo3vEDFyO4aEfBdl-kjvW2kaBOwsL1i9UohR44EvpMC1eXO_S8YR7nOlXveeJmQdGDw2v9H3zrnxsZRcY2RehUmhP-H1OrXwuz9MUXh6K_JOKXEAsHlx6igZaV5Xvk25GD_xIwznHI_kzKe2yiDbm1nNCevhAQUTMKrw_zl4H8h0ksPz9GjTgV1A7qMYhgwRcN4.cqXpuCquCjRB-w5jRaLBkDMq-qmGfkqaUszcYzo-S7M&dib_tag=se&keywords=glass+for+men&qid=1734681752&sprefix=glass+foe%2Caps%2C341&sr=8-2-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1'
    },
    {
      'title': 'glass',
      'price': 1500,
      'image': 'assets/glass.jpeg',
      'platform': 'Flipkart',
      'url': ''
    },
     {
      'title': 'microwave',
      'price': 16990,
      'image': 'assets/microwave.jpg',
      'platform': 'Amazon',
      'url': 'https://www.amazon.in/LG-Convection-Microwave-MJ2887BIUM-Rotisserie/dp/B0CQSYPFSQ/ref=sr_1_1_sspa?crid=1LUEJSGZK9WTC&dib=eyJ2IjoiMSJ9.GbngV748Bds_TBcb03Knfni89GQS2ioM77cWXiScfr7pV8NvJiXmfdSFZbruQZXwggmWZ3sxCWvTSUtO4zeb3iZnlllUEXcfw6-mIYL3CYMZDIJxJ9n0c0IkxA8Gaowx6Y_n1-ryDoG1nkGSS_g0LMBTpfS75GjlcKSeHpVyJ5Ffcm9ekSZ781LnnBjfUQ-rRmt8z5BQLw3kBXm3H7H9TVtKCgzidg6bE3w0_zmoh8o.2RlEbd4Vf8w-wz1SVmLOtruqBbdAC4wH4U5bkTedhbE&dib_tag=se&keywords=microwave&qid=1734681847&sprefix=microwa%2Caps%2C316&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1'
    },
    {
      'title': 'microwave',
      'price': 17900,
      'image': 'assets/microwave.jpg',
      'platform': 'Flipkart',
      'url': ''
    },
    {
      'title': 'fire stick',
      'price': 16900,
      'image': 'assets/fire.jpg',
      'platform': 'amazon',
      'url': 'https://www.amazon.in/Fire-TV-Stick-Alexa-Voice-Remote-3rd-Gen/dp/B08R6QR863/ref=sr_1_1?crid=2BMUMNPHJZHF5&dib=eyJ2IjoiMSJ9.RGMFNDLzng92ASpxRaupYEgYA-yncMKST2kgjpAcU8CHsB4nH249TKXgiqZnM-0pCoHDtIDRMV_M7p520WxuUIizIu2S-2NWwSB1Ycq2YLQS9lG7jwDe8ad-e6vpOD_AwRjgGACzlnafxjrbQQS2-GRTInrMc_3IIS2HxzswleDc6PxwhmvhdaErc7GOgSRiCgNAWUdHoEF_ruaEQP8NUgvI2KPIKaGfu8Bz0aEq4ls.XQnaecdEXLoamyi-C2U-pwqDBuxuKq7rd8YajaTPAAU&dib_tag=se&keywords=firestick&qid=1734681941&sprefix=firesti%2Caps%2C313&sr=8-1'
    },
    {
      'title': 'fire stick',
      'price': 17900,
      'image': 'assets/fire.jpg',
      'platform': 'Flipkart',
      'url': ''
    },
    {
      'title': 'firdege',
      'price': 36590,
      'image': 'assets/firdege.webp',
      'platform': 'amazon',
      'url': 'https://www.amazon.in/Samsung-Convertible-Frost-Free-Refrigerator-RT34C4523B1/dp/B0C2TQML97/ref=sr_1_1_sspa?crid=GQLTSJZUY9NQ&dib=eyJ2IjoiMSJ9.N8xc06swLf7S64Newo0tMZqv2JjJpedmFxcRSQzDE3UOHO0umeg5LSFZD1YgvS4Aza0OkOwPCfJaByYE7vy5jT18SzUGqZ9jOitk7QYu7Gr4gK2OfDFeX9BQEsYnCy7QNKS7dnyxNv1hRHIXwwV7K46JdPcPHY0IGeePDPOiy3d11BDzCt0TH0qLixr6t0UAASvK02Ekzcofejo28ZJ_o-RRaaOZ_ag_HfWckScUVYo.sUNblzSqMATxw0L2vpg1BOlGO5VMRS2MdcaOy_NRGD4&dib_tag=se&keywords=fridge&qid=1734682040&sprefix=fird%2Caps%2C312&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1'
    },
    {
      'title': 'fridge',
      'price': 4000,
      'image': 'assets/firdege.webp',
      'platform': 'amazon',
      'url': 'https://www.amazon.in/Noise-Launched-Wireless-Playtime-Instacharge/dp/B0CQJWMMG7/ref=sr_1_1_sspa?crid=20D7VFTQGBYKI&dib=eyJ2IjoiMSJ9.X3fOOm81TF0LXHfvQXyUzUxnlZhcCv5WJUWNEvb9XS-b82oYdAmiFvo1y4QQjoqZC45XCurq4BIV7KFVeqUCKSjCPf1omzD2S-B8vpWLgkcMR0toQATtqoKyY6U2wYZaFfD8ZgRpfB9elISsF_L8srn66Jx3ju6GZXljkN13YkVUa5lLojO2eenwMJ6Q-ybFOfoinTKxwrYa-3n5oHil9St-nbghr2nmqiqZ5RJc06s.ZXoow2EUnQ1NLxTlMhFMx2G7RMhfWTMSO64B5XGDLTE&dib_tag=se&keywords=earphones&qid=1734682142&sprefix=earphone%2Caps%2C318&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&psc=1'
    },
    {
      'title': 'earphones',
      'price': 3500,
      'image': 'assets/earphones.jpeg',
      'platform': 'Flipkart',
      'url': 'https://www.amazon.in/Noise-Launched-Wireless-Playtime-Instacharge/dp/B0CQJWMMG7/ref=sr_1_1_sspa?crid=20D7VFTQGBYKI&dib=eyJ2IjoiMSJ9.X3fOOm81TF0LXHfvQXyUzUxnlZhcCv5WJUWNEvb9XS-b82oYdAmiFvo1y4QQjoqZC45XCurq4BIV7KFVeqUCKSjCPf1omzD2S-B8vpWLgkcMR0toQATtqoKyY6U2wYZaFfD8ZgRpfB9elISsF_L8srn66Jx3ju6GZXljkN13YkVUa5lLojO2eenwMJ6Q-ybFOfoinTKxwrYa-3n5oHil9St-nbghr2nmqiqZ5RJc06s.ZXoow2EUnQ1NLxTlMhFMx2G7RMhfWTMSO64B5XGDLTE&dib_tag=se&keywords=earphones&qid=1734682142&sprefix=earphone%2Caps%2C318&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&th=1'
    },
    {
      'title': 'earphones',
      'price': 40000,
      'image': 'assets/earphones.jpeg',
      'platform': 'Flipkart',
      'url': ''
    },
    {
      'title': 'camera canva',
      'price': 90000,
      'image': 'assets/camera.jpg',
      'platform': 'amazon',
      'url': ''
    },
     {
      'title': 'camera canva',
      'price': 95000,
      'image': 'assets/camera.jpg',
      'platform': 'amazon',
      'url': ''
    },
    {
      'title': 'Allen Solley',
      'price': 1000,
      'image': 'assets/allen.jpg',
      'platform': 'amazon',
      'url': 'https://www.amazon.in/Allen-Solly-Casual-ASSFWMOFX67262_Sky-Blue_40/dp/B07DMQRHCW/ref=sr_1_8?dib=eyJ2IjoiMSJ9.U2LrrQ66dNJ5i5gSNvNYg9oHHQeyNMLgnRYHFq5aBGIwOntOuNWA9O70YmBdM-iFsL953ENBQQlbzwEkYq33VGZ0J1mCqzXVUJNI1fD3JC1w1fGs4k2MBXdXS6J3O1KjCkdaphqcRztZkkbleYkJG0vIDsQhtcyKPtYk0QbAGn-6SlGnZvOJLj_lof3SzGHuWFHUYtEG3qpTrI1OjtZo9YKyt-0ZAup_GtNB98SSCTJbRQF_2jryyserozNuTCNjtY4ok7HKfvppXR_sKna-89SjZTsl7aAUMINs3DZeWVk.3oqZWQXTys5RX7KU_Mx75ZLnCSIEsTCay95X8vKW3Gs&dib_tag=se&keywords=allen+solly&nsdOptOutParam=true&qid=1734682453&sr=8-8'
    },
    {
      'title': 'Allen Solley',
      'price': 1500,
      'image': 'assets/allen.jpg',
      'platform': 'Ajio',
      'url': ''
    },
    {
      'title': 'College bag',
      'price': 2500,
      'image': 'assets/bag.webp',
      'platform': 'Ajio',
      'url': ''
    },
    {
      'title': 'College bag',
      'price': 3500,
      'image': 'assets/bag.webp',
      'platform': 'myntra',
      'url': ''
    },
     {
      'title': 'College bag',
      'price': 3500,
      'image': 'assets/bag.webp',
      'platform': 'myntra',
      'url': ''
    },
    {
      'title': 'T shirt',
      'price': 999,
      'image': 'assets/shirt.jpg',
      'platform': 'myntra',
      'url': ''
    },
    {
      'title': 'T shirt',
      'price': 700,
      'image': 'assets/shirt.jpg',
      'platform': 'Ajio',
      'url': ''
    },
    {
      'title': 'LapTop Bag',
      'price': 1700,
      'image': 'assets/baglaptop.jpeg',
      'platform': 'Ajio',
      'url': ''
    },
    {
      'title': 'LapTop Bag',
      'price': 1900,
      'image': 'assets/baglaptop.jpeg',
      'platform': 'Myntra',
      'url': ''
    },
    {
      'title': 'ClassiC Shirt',
      'price': 900,
      'image': 'assets/new shirt.jpg',
      'platform': 'Myntra',
      'url': ''
    },
    {
      'title': 'ClassiC Shirt',
      'price': 800,
      'image': 'assets/new shirt.jpg',
      'platform': 'Ajio',
      'url': ''
    },
    {
      'title': 'Yellow T shirt',
      'price': 670,
      'image': 'assets/myntra1.webp',
      'platform': 'Ajio',
      'url': ''
    },
    {
      'title': 'Yellow T shirt',
      'price': 870,
      'image': 'assets/myntra1.webp',
      'platform': 'Myntra', //fibo e 4.jpg
      'url': ''
    },
    {
      'title': 'children ware',
      'price': 970,
      'image': 'assets/fibo e 4.jpg',
      'platform': 'Ajio', //fibo e 4.jpg
      'url': ''
    },
    {
      'title': 'children ware',
      'price': 670,
      'image': 'assets/fibo e 4.jpg',
      'platform': 'Myntra', //fibo e 4.jpg //fibo e 3.jpg
      'url': ''
    },
    {
      'title': 'Mensware italic',
      'price': 10000,
      'image': 'assets/fibo e 3.jpg',
      'platform': 'Myntra', //fibo e 4.jpg //fibo e 3.jpg
      'url': ''
    },
    {
      'title': 'Mensware italic',
      'price': 1200,
      'image': 'assets/fibo e 3.jpg',
      'platform': 'ajio', //fibo e 4.jpg //fibo e 3.jpg //fibo 1.jpg
      'url': ''
    },
    {
      'title': 'womens italic',
      'price': 1900,
      'image': 'assets/fibo 1.jpg',
      'platform': 'ajio', //fibo e 4.jpg //fibo e 3.jpg //fibo 1.jpg
      'url': ''
    },
    {
      'title': 'womens italic',
      'price': 2900,
      'image': 'assets/fibo 1.jpg',
      'platform': 'myntra', //fibo e 4.jpg //fibo e 3.jpg //fibo 1.jpg
      'url': ''
    },
    
    
    
    
    
  ];

  List<Map<String, dynamic>> filteredProducts = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredProducts = products;
  }

  void _searchProduct(String query) {
    final results = products.where((product) {
      final name = product['title'].toLowerCase();
      final searchQuery = query.toLowerCase();
      return name.contains(searchQuery);
    }).toList();

    setState(() {
      filteredProducts = results;
    });
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not launch URL.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search Products',
                border: OutlineInputBorder(),
              ),
              onChanged: _searchProduct,
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 0.7,
              ),
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                final product = filteredProducts[index];
                return GestureDetector(
                  onTap: () => _launchURL(product['url']),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 5.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(10),
                            ),
                            child: Image.asset(
                              product['image'],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product['title'],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Price: \₹${product['price']}',
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'in: ${product['platform']}',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[700],
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
