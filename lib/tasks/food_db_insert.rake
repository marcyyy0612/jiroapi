require 'rakuten_web_service'

namespace :food_db_insert do
  task :run => :environment do
    Food.delete_all
    data_list = [
                        { name: "庶民のにんにく", genre: 0, price: 300, image_url: "https://tguchi.s3.amazonaws.com/uploads/topic_item/image/68432/retina_pixta_14786383_S.jpg"},
                        { name: "一般のにんにく", genre: 0, price: 500, image_url: "https://kenka2.com/uploads/article/image/878/card_67_06-1.jpg"},
                        { name: "元気が出るにんにく", genre: 0, price: 1000, image_url: "https://www.s-shizensyokuhin.jp/upload/save_image/10021934_59d2162c3c3a3.jpg"},
                        { name: "高級なにんにく", genre: 0, price: 2000, image_url: "https://kenka2.com/uploads/article/image/878/card_67_06-1.jpg"},

                        { name: "庶民の豚", genre: 2, price: 900, image_url: "https://st3.depositphotos.com/1010050/15695/i/1600/depositphotos_156955716-stock-photo-raw-pork-steak.jpg"},
                        { name: "一般の豚", genre: 2, price: 2500, image_url: "http://www.asahi-meat.com/wp-content/uploads/2011/01/14-1.jpg"},
                        { name: "高級な豚", genre: 2, price: 4000, image_url: "http://www.studiodansyaku.com/wp-content/uploads/2013/01/dsc08312-540x359.jpg"},

                        { name: "庶民のもやし", genre: 4, price: 50, image_url: "https://www.j-cast.com/assets_c/2017/09/news_20170926190726-thumb-autox380-122424.jpg"},
                        { name: "一般のもやし", genre: 4, price: 100, image_url: "https://cdn.amanaimages.com/cen3tzG4fTr7Gtw1PoeRer/01651097421.jpg"},
                        { name: "高級なもやし", genre: 4, price: 1000, image_url: "http://crea.bunshun.jp/mwimgs/a/6/586/img_a65e8cba768398f9aac9a9805036808b44622.jpg"},

                        { name: "庶民の醤油", genre: 5, price: 300, image_url: "https://askul.c.yimg.jp/img/product/3L1/8521111_3L1.jpg"},
                        { name: "一般の醤油", genre: 5, price: 400, image_url: "http://yonebishi.co.jp/wordpress/wp-content/uploads/2012/02/hinagiku_720.jpg"},
                        { name: "高級な醤油", genre: 5, price: 2000, image_url: "http://www.andojyozo.co.jp/images/detailed/1/%E7%94%9F%E9%86%A4%E6%B2%B9360.jpg"},
                        { name: "代々伝わる秘伝の醤油", genre: 5, price: 4000, image_url: "http://www.andojyozo.co.jp/images/detailed/1/%E7%94%9F%E9%86%A4%E6%B2%B9360.jpg"},

                        { name: "庶民の麺", genre: 6, price: 330, image_url: "http://muromen.com/images/material/namaramen01-1.jpg"},
                        { name: "一般の麺", genre: 6, price: 600, image_url: "http://www.kitakata.co.jp/mujin/img/prejudice/p2_p1.jpg"},
                        { name: "高級な麺", genre: 6, price: 1000, image_url: "http://menya-nagomi.com/images/ban22naka.png"},
                ]

    data_list.each do |data|
      Food.create(data)
    end
    # Food.initial_create
    # item_list = [
    #              {keyword: "にんにく", type: 0},
    #              {keyword: "豚", type: 2},
    #              {keyword:"豚骨", type: 3},
    #              {keyword: "もやし", type: 4},
    #              {keyword: "醤油", type: 5},
    #              {keyword:"麺", type:6}
    #             ]

    # item_list.each do |item|
    #   puts item
    #   db_insert(item["keyword"], item["type"])
    # end
  end

  # def db_insert(keyword, type)
  #   puts keyword, "aaa"
  #   RakutenWebService.configuration do |c|
  #     c.application_id = "1042188073037112147"
  #     c.affiliate_id = "16bc0a99.9fb34c6e.16bc0a9a.ab764278"
  #   end

  #   items = RakutenWebService::Ichiba::Item.search(:keyword => keyword)
  #   items.each do |item|
  #     Food.create(
  #                 name: item["itemName"],
  #                 type: type,
  #                 price: item.price,
  #                 image_url: item["mediumImageUrls"]
  #                )
  #   end
  # end
end
