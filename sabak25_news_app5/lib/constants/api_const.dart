class ApiConst{
  static const apiKey = '96ed690815b7474ea61d74ef64a2f528';
  static String topNews([String? domain]) => 'https://newsapi.org/v2/top-headlines?country=${domain ?? 'us'}&apiKey=$apiKey';
    static const newsimages = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4nY0CDOfCuL9epkfsgnC15qyucGanSPt5Ng&usqp=CAU';

     

  
}
