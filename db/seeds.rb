# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = User.create([
    { first_name: 'Max', last_name: 'Rostov', password_digest: '123456', email: 'admin@mail.net', address: 'Odessa', number: '0991234567', photo: '~/images/photo/1.png', role: 'admin' },
    { first_name: 'Ivan', last_name: 'Ivanov', password_digest: '123456', email: 'ivanov@mail.net', address: 'Odessa', number: '0991234567', photo: '~/images/photo/2.png', role: 'user' },
    { first_name: 'Petr', last_name: 'Petrov', password_digest: '123456', email: 'petrov@mail.net', address: 'Odessa', number: '0991234567', photo: '~/images/photo/3.png', role: 'user' },
    { first_name: 'Isaak', last_name: 'Sidorov', password_digest: '123456', email: 'sidorov@mail.net', address: 'Odessa', number: '0991234567', photo: '~/images/photo/4.png', role: 'user' },
                 ])

p = Post.create([
    { title_en: 'Donec non leo vehicula, tristique dui ac, laoreet nisl', text_en: 'Nam augue augue, dapibus in fringilla id, pulvinar quis nulla. Nam gravida congue porttitor. Cras tincidunt, ligula eu dignissim semper, eros mi feugiat turpis, non pulvinar risus neque id orci. In suscipit ex vitae neque interdum, ac blandit leo auctor. Quisque fringilla ligula id dignissim ultrices. Nulla fermentum venenatis tortor at scelerisque. Etiam pulvinar quis nunc nec lobortis. Morbi nec lacinia est, at maximus sem. Nullam massa nisl, rhoncus id nisl sit amet, placerat blandit magna. Curabitur a lacus a arcu blandit mollis ut et nibh. Nunc ut facilisis purus, sit amet sodales massa. Integer eu hendrerit ex. In dolor nisi, iaculis non nisl quis, convallis congue velit. Nullam id nunc at nibh molestie ultricies. Sed dapibus nec mauris varius aliquam.

In nunc ipsum, cursus eget venenatis non, ultricies accumsan mauris. Nulla vitae pulvinar elit. Fusce vel mauris dolor. Aliquam quis porttitor erat. Fusce rhoncus feugiat lacus ut hendrerit. In congue tellus sit amet eleifend scelerisque. Sed facilisis nunc ut tellus scelerisque, et pellentesque sapien gravida. Pellentesque sodales molestie erat ut scelerisque. Maecenas in scelerisque sem, sit amet maximus dui.', preview: 'previews/p1.png', user: u.first },
    { title_en: 'Nam eget turpis efficitur, dignissim tortor quis, imperdiet ex', text_en: 'Ut placerat nibh ac mauris lacinia euismod. Quisque sed porttitor nisi. Nulla nec lacinia urna. Pellentesque non lectus porttitor, viverra odio interdum, consectetur diam. Nam in sagittis leo. Pellentesque sed blandit diam. Aenean ut viverra tellus, vitae cursus orci. Nulla dictum pellentesque arcu suscipit porttitor.

Donec ut tellus neque. Sed lorem nibh, blandit ac auctor vitae, accumsan eget turpis. Praesent efficitur vestibulum turpis, eu porttitor velit mollis in. Ut rutrum, odio vestibulum blandit varius, eros lorem convallis ante, quis ullamcorper nibh nulla sit amet eros. Ut quis turpis quam. Aenean quis erat sed ligula tincidunt pulvinar pellentesque ut ex. Vestibulum in mi ac erat iaculis aliquam. Nulla vestibulum iaculis quam vitae scelerisque. In congue faucibus est, et rutrum felis fermentum ornare. Suspendisse facilisis eros eget nibh consectetur, sed eleifend leo posuere. In mauris massa, ornare non accumsan ac, efficitur ac metus. Fusce magna nulla, vestibulum sit amet mattis fringilla, placerat et dui. Donec nibh orci, faucibus id molestie nec, malesuada sit amet ipsum. Vestibulum erat orci, vulputate at nisi eu, congue imperdiet risus.', preview: 'previews/p2.png', user: u.first },
    { title_en: 'Ut non arcu vel enim fermentum sollicitudin', text_en: 'Aliquam erat volutpat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam vestibulum eget erat id lobortis. Sed nunc ligula, tempor nec sapien non, euismod vulputate augue. Nam hendrerit, ligula at mollis commodo, metus eros sollicitudin ex, quis lacinia libero felis non lacus. Sed posuere semper quam in aliquet. Nam mattis faucibus risus, non eleifend risus dignissim quis. Aenean dolor risus, lobortis a nunc ultricies, dignissim tincidunt quam.

Donec tempus, felis a porta finibus, odio mauris feugiat massa, fermentum volutpat risus odio vel diam. Donec congue nulla aliquet, congue ex a, laoreet nibh. Cras purus nisl, scelerisque ac efficitur ac, euismod eget ante. Vestibulum ullamcorper mauris dui, ut iaculis orci aliquam vel. Proin lacinia sodales finibus. Morbi ut justo non nibh finibus tempus ut quis elit. Nullam dignissim, ante eget mattis vulputate, nisl arcu cursus diam, nec finibus erat arcu a risus. Etiam interdum, ligula non mattis vulputate, mi augue efficitur metus, vel facilisis lectus urna sed justo. Curabitur sit amet nunc in felis egestas accumsan. Nam nec justo sed orci accumsan feugiat. Aliquam ultricies sed enim non luctus. In hac habitasse platea dictumst. Nullam eu est pharetra, fringilla lorem non, iaculis justo. Proin finibus nunc quis ullamcorper semper.', preview: 'previews/p3.png', user: u.first },
    { title_en: 'Aliquam luctus erat eu feugiat interdum', text_en: 'Ut consectetur lacus eget sem tempor porttitor. Phasellus efficitur luctus dapibus. Sed nec eleifend neque. Pellentesque at egestas augue. Sed vel hendrerit nisi. Etiam venenatis, nunc non feugiat facilisis, libero metus vestibulum magna, interdum euismod mi risus vel felis. Nam mollis pellentesque massa. In arcu nulla, suscipit quis justo eget, commodo fringilla massa. Vestibulum porttitor orci ut felis congue venenatis.

In nisl lorem, tempor sollicitudin vestibulum vitae, tincidunt eu risus. In ornare sem arcu, ut tristique purus volutpat ut. Phasellus vitae leo quis mi bibendum aliquet a nec nisi. Fusce nec lectus sit amet nunc suscipit varius. Phasellus quis risus vel mauris aliquam vehicula sed eget nisl. Aenean non lorem mi. Mauris leo augue, porttitor quis risus in, suscipit cursus eros. Nullam tincidunt at lectus quis laoreet. Suspendisse potenti. Nulla facilisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vel nisl non quam egestas tristique. Vivamus nec augue id metus porttitor aliquet. Vestibulum et sem eu nibh ultricies luctus id at ante. Etiam euismod, nisi eu auctor posuere, nunc lorem feugiat nibh, id blandit lectus ligula auctor ligula. Proin molestie imperdiet ullamcorper.', preview: 'previews/p4.png', user: u.first },
    { title_en: 'Integer maximus libero a nunc pellentesque, sed molestie est lobortis', text_en: 'Nullam nec porta quam. Quisque sit amet sagittis lacus, facilisis convallis dui. Donec vulputate velit eu turpis laoreet interdum. Fusce vitae ipsum eget lorem aliquam mollis. Proin sit amet quam non libero suscipit laoreet. Maecenas fermentum ultricies lectus, sed venenatis massa facilisis et. Cras mauris enim, sagittis eu sem dictum, gravida sagittis orci. Maecenas fermentum neque sed fringilla gravida. Nulla cursus lorem nunc, a fermentum velit condimentum vel. Nam a rhoncus ipsum, in faucibus nibh. Duis sagittis sapien mi, nec cursus sem condimentum quis. Aenean bibendum facilisis orci, in pharetra sem sollicitudin in. Nulla venenatis eros a diam sollicitudin, sed elementum eros feugiat.

Nullam elementum enim ut luctus finibus. Pellentesque sapien elit, fermentum eget porta a, sagittis non turpis. Pellentesque gravida venenatis nulla, a sollicitudin quam maximus eget. Curabitur placerat eros eget orci viverra aliquam. Phasellus vel risus et ex vehicula lacinia eu in magna. Ut sit amet ligula nibh. Aliquam eu est odio. Nullam sollicitudin vestibulum sapien a lacinia. Nullam venenatis tincidunt interdum. Sed congue tellus non magna cursus, eu mattis nisi tempor. Nulla facilisis gravida auctor.', preview: 'previews/p5.png', user: u.first },
    { title_en: 'Mauris nec justo et risus iaculis feugiat', text_en: 'Integer iaculis quam sed felis lobortis, eu congue ligula tincidunt. Fusce vitae dui laoreet justo luctus sollicitudin. Ut nec porttitor tortor. Aenean vitae eleifend mi. Sed rutrum dignissim nisl in pretium. Sed id laoreet ante. Vestibulum nec lacus ultrices, rhoncus metus vel, vehicula sapien. Donec dignissim turpis at mi mattis sollicitudin. Etiam efficitur porttitor nibh vel mattis.

Sed mi tellus, lacinia vitae mauris in, tincidunt hendrerit tortor. Pellentesque enim tellus, vehicula nec nisi quis, posuere rutrum sem. Integer ornare, leo placerat ultrices gravida, diam nibh interdum risus, maximus aliquam nibh orci eu tellus. Donec at ligula pulvinar, eleifend sapien vel, facilisis quam. Etiam ut massa euismod, ultrices turpis non, bibendum ante. Nulla sit amet erat vitae tellus ullamcorper mollis a nec quam. Nunc dignissim lacinia ipsum, sit amet condimentum ipsum fermentum imperdiet.', preview: 'previews/p6.png', user: u.first }
                ])

a = Area.create([
    { name_en: 'Kiev', name_ru: 'Киев' },
    { name_en: 'Odessa Oblast', name_ru: 'Одесская область' },
    { name_en: 'Kiev Oblast', name_ru: 'Киевская область' },
    { name_en: 'Ternopol Oblast', name_ru: 'Тернопольская область' }
                ])

c = Category.create([
    { name_en: 'Housing and utilities', name_ru: 'Жилищно-коммунальное обслуживание' },
    { name_en: 'Computers', name_ru: 'Компьютеры' },
    { name_en: 'Consulting services', name_ru: 'Консалтинговые услуги' },
    { name_en: 'Light industry', name_ru: 'Легкая промышленность' },
    { name_en: 'Furniture', name_ru: 'Мебель' },
    { name_en: 'Medicine', name_ru: 'Медицина' },
    { name_en: 'Metals', name_ru: 'Металлы' },
    { name_en: 'Scientific research', name_ru: 'Научные исследования' },
    { name_en: 'Property', name_ru: 'Недвижимость' },
    { name_en: 'Food Industry', name_ru: 'Пищевая промышленность' },
    { name_en: 'Polygraphy', name_ru: 'Полиграфия' },
    { name_en: 'Industrial equipment', name_ru: 'Промышленное оборудование' },
    { name_en: 'Agriculture', name_ru: 'Сельское хозяйство' },
    { name_en: 'Building', name_ru: 'Строительство' },
    { name_en: 'Goods, works, services', name_ru: 'Товары, работы, услуги' },
    { name_en: 'Vehicles, Parts', name_ru: 'Транспорт, запчасти' },
    { name_en: 'Household, paper', name_ru: 'Хозтовары, бумага' },
    { name_en: 'Energy, oil or fuel', name_ru: 'Энергетика, нефтепродукты, топливо' }
                    ])

t = Tender.create([
    { title: 'картофель для производства', content: 'Sed nulla tellus, bibendum dictum leo in, vestibulum condimentum urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum ante velit, aliquam imperdiet elementum eget, mollis eu metus. Nulla facilisi. In rutrum lectus nec elit sodales iaculis. Praesent id turpis diam. Quisque in commodo mauris. Nunc quis feugiat ipsum. Nam in tempor leo. Duis nec turpis auctor, imperdiet eros nec, maximus lorem. Nam tortor ante, cursus vel est vitae, laoreet scelerisque tortor. Fusce condimentum imperdiet nulla, id egestas urna varius vitae. Vivamus aliquam mi sed consequat auctor. Pellentesque ut bibendum urna, sed sagittis erat. Suspendisse pretium, velit non convallis dictum, tortor augue commodo justo, porta faucibus sapien nulla vitae eros. Nullam congue iaculis odio, sit amet lacinia eros imperdiet ut.',
      category: c[9], amount: '20000', currency: 'UAH', address: 'Иванковский р-н., с.Оране', deadline: '2016-06-03', area: a.third, user: u.second },
    { title: 'Поддон деревянный б/у 1200/800 (средний)', content: 'Fusce consectetur pretium felis, vitae congue dolor elementum sit amet. Etiam nec scelerisque eros. Curabitur eleifend sapien eget feugiat lobortis. Ut vitae diam sit amet felis efficitur venenatis ut nec elit. Donec auctor tempor lacus, at aliquet velit malesuada et. Praesent at tincidunt massa. Fusce sollicitudin accumsan erat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam nec semper turpis, sed sollicitudin lorem. Donec eu orci vel diam faucibus pulvinar eget ornare leo. Vivamus id sem pulvinar, vulputate quam sed, vehicula augue. Nunc at urna risus. Curabitur lectus justo, dapibus sit amet ornare efficitur, tempor ut justo. Aenean aliquam enim eros. Aliquam dictum sit amet nulla at efficitur.',
      category: c[14], address: 'г. Киев, ул. Гродненская, 32', deadline: '2016-06-03', area: a.first, user: u.second },
    { title: 'Металлопластиковые окна "Виконда"', content: 'Donec non porta mi. Vestibulum imperdiet, risus sed ultrices lobortis, justo mauris dapibus quam, et placerat felis diam non nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam id metus lectus. Integer vel orci risus. Donec pretium dui sed sem maximus convallis. Nulla rhoncus porttitor metus. Fusce fringilla volutpat ex. Curabitur ac dapibus tellus.',
      category: c[13], address: 'Залещики, ул.Стефаника 17 рынок (в помещении заготконторы)', deadline: '2016-06-03', area: a.last, user: u.third },
    { title: 'Транспортно-экспедиционные услуги', content: 'Mauris commodo et metus non euismod. Integer ut magna vehicula, venenatis dolor at, auctor magna. Fusce cursus, nisi nec vulputate congue, arcu metus laoreet turpis, sed porttitor ex dolor eget lorem. In quis massa venenatis, consequat sem id, vulputate enim. Vivamus rhoncus ligula ac euismod vestibulum. Nunc vehicula sed ligula nec convallis. Integer sit amet viverra ipsum. Curabitur lectus nibh, porttitor sed elementum varius, sollicitudin tempor elit. Pellentesque at ipsum magna. Curabitur vel lectus sagittis, venenatis lacus ut, faucibus erat. Proin id pretium metus. Aliquam fringilla libero nulla, vel mattis ipsum porttitor ultricies. Pellentesque vitae bibendum libero. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
      category: c[14], amount: '100000', currency: 'UAH', address: 'г. Киев, проспект Краснозвездный 119, оф. 526', deadline: '2016-06-03', area: a.first, user: u.second },
    { title: 'Строительные услуги ( предварительный отбор строительных организаций для строительства автомойки. Тип работ: сети и коммуникации, металлоконструкция, земляные и бетонные работы )', content: 'Nullam at fringilla enim, et consectetur ex. Suspendisse sagittis ut sem vel molestie. Aenean sed tortor quis ipsum egestas cursus. Praesent quis facilisis sem. Etiam imperdiet ultricies magna, at placerat nisl finibus ac. In faucibus libero a malesuada egestas. Vestibulum venenatis leo sed diam pharetra, ac porttitor eros interdum. Curabitur ullamcorper rutrum gravida. Phasellus tincidunt, tellus sit amet cursus dapibus, nisi enim gravida risus, sit amet tristique nibh eros a magna. Aenean tincidunt suscipit leo. Pellentesque a venenatis mi, eu eleifend nunc. Cras laoreet, ipsum quis laoreet imperdiet, quam urna consequat quam, at sodales urna mi nec nibh.',
      category: c[13], amount: '1000000', currency: 'UAH', address: 'г. Одесса', deadline: '2016-06-03', area: a.second, user: u.last }
                  ])

t = Tag.create([{ name: 'окна' }, { name: 'автомойка' }, { name: 'картошка' }, { name: 'картофель' }, { name: 'сети' }, { name: 'срочно' }])
