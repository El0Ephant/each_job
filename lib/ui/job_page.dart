import 'package:each_job/ui/widgets/percentile_line.dart';
import 'package:each_job/ui/widgets/search_field.dart';
import 'package:each_job/utils/app_sizes.dart';
import 'package:flutter/material.dart';

class JobPage extends StatelessWidget {
  const JobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.outerIndent),
            child: Column(
              children: [
                SearchField<String>(
                  label: 'Регион',
                  onChange: (selectedValue) {

                  },
                  choices: regions,
                ),
                const SizedBox(height: AppSizes.innerIndent,),
                SearchField<String>(
                  label: 'Профессия',
                  onChange: (selectedValue) {

                  },
                  choices: regions,
                ),
                const SizedBox(height: AppSizes.outerIndent,),
                SizedBox(
                  height: AppSizes.commonHeight,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    child: Text("Показать статистику")
                  ),
                ),
                const SizedBox(height: AppSizes.outerIndent,),
                const PercentileLine(
                  bottom: 208,
                  upper: 651,
                  median: 400,
                  oftenSalariesBottom: 325,
                  oftenSalariesUpper: 511
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const List<String> regions = [
  'Москва', 'Санкт-Петербург', 'Севастополь',

  'Адыгея', 'Алтай', 'Алтайский край', 'Амурская область', 'Архангельская область',
  'Астраханская область', 'Башкортостан', 'Байкальский край', 'Белгородская область',
  'Брянская область', 'Бурятия', 'Владимирская область', 'Волгоградская область',
  'Вологодская область', 'Воронежская область', 'Дагестан', 'Еврейская автономная область',
  'Забайкальский край', 'Ивановская область', 'Иркутская область', 'Кабардино-Балкария',
  'Калининградская область', 'Калужская область', 'Камчатский край', 'Карачаево-Черкесия',
  'Карелия', 'Кемеровская область', 'Кировская область', 'Костромская область',
  'Краснодарский край', 'Красноярский край', 'Курганская область', 'Курская область',
  'Ленинградская область', 'Липецкая область', 'Магаданская область', 'Московская область',
  'Мурманская область', 'Набережные Челны', 'Ненецкий автономный округ', 'Новгородская область',
  'Новосибирская область', 'Омская область', 'Оренбургская область', 'Орловская область',
  'Пензенская область', 'Пермский край', 'Приморский край', 'Псковская область', 'Ростовская область',
  'Рязанская область', 'Самарская область', 'Саратовская область', 'Сахалинская область',
  'Свердловская область', 'Смоленская область', 'Ставропольский край', 'Тамбовская область',
  'Татарстан', 'Тверская область', 'Томская область', 'Тульская область', 'Тюменская область',
  'Удмуртия', 'Ульяновская область', 'Хабаровский край', 'Хакасия', 'Ханты-Мансийский автономный округ',
  'Челябинская область', 'Чечня', 'Чувашия', 'Чукотский автономный округ', 'Ямало-Ненецкий автономный округ',
  'Ярославская область',

  'Москва', 'Санкт-Петербург', 'Новосибирск', 'Екатеринбург', 'Нижний Новгород',
  'Казань', 'Челябинск', 'Омск', 'Самара', 'Ростов-на-Дону', 'Уфа', 'Красноярск', 'Воронеж',
  'Пермь', 'Волгоград', 'Краснодар', 'Томск', 'Тольятти', 'Ижевск', 'Барнаул', 'Ульяновск',
  'Ярославль', 'Хабаровск', 'Махачкала', 'Магнитогорск', 'Ставрополь', 'Рязань', 'Саранск',
  'Сочи', 'Псков', 'Арзамас', 'Северодвинск', 'Набережные Челны', 'Петрозаводск', 'Смоленск',
  'Калуга', 'Кострома', 'Астрахань', 'Брянск', 'Саратов', 'Владикавказ', 'Чита', 'Грозный',
  'Владикавказ', 'Тверь', 'Тула', 'Балашиха', 'Волжский', 'Подольск', 'Нижневартовск',

  'Ненецкий автономный округ', 'Ямало-Ненецкий автономный округ', 'Ханты-Мансийский автономный округ',
  'Чукотский автономный округ', 'Мурманская область', 'Республика Крым', 'Севастополь'
];
