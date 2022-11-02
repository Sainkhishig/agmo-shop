// ignore_for_file: constant_identifier_names

import 'package:intl/intl.dart';

const UPLOAD_SIZE_LIMIT = 10500000; //10MB

const FACILITY_SEARCH_TYPE_LIST = <dynamic>[
  {"key": "facilityName", "label": "施設名", "value": "", "hint": "部分一致"},
  {"key": "branchId", "label": "拠点", "value": "", "hint": ""},
  {"key": "zipcode", "label": "郵便番号", "value": "", "hint": "完全一致"},
  {"key": "tel", "label": "電話番号", "value": "", "hint": "完全一致"},
];

// page name
const DASHBOARD = "ダッシュボード";
const ADMIN_LIST_LIBERTY = "管理者(リバティー) $LIST";
const ADMIN_LIST_FACILITY = "管理者(施設) $LIST";
const ADMIN_LIST_UNDEFINED = "管理者(未設定) $LIST";
const ADMIN_EDIT = "管理者$EDIT";
const ADMIN_REGISTRATION = "管理者$REGISTRATION";

// word
const LIST = "一覧";
const EDIT = "編集";
const REGISTRATION = "新規登録";
const UNDEFINED_NAME = "未設定";
const LIBERTY = "liberty";
const FACILITY = "Facility";
const UNDEFINED = "undefined";

const BAD_REQUERT = "BAD_REQUERT";
const UNAURHORIZED = "UNAURHORIZED";
const FORBIDDEN = "FORBIDDEN";
const NOT_FOUND = "NOT_FOUND";
const INTERNAL_ERROR = "INTERNAL_ERROR";

const NotoSansJP = 'NotoSansJP';
const SORT_BY_DISPLAY_ORDER = "指定順並び替え";
const CANCEL = "キャンセル";
const UPDATE = "更新";

const ADD = "追加";
const DELETE = "削除";
const SAVE = "保存";

// display sort order mode
enum DisplayOrderMode { specified_order, newest_order, oldest_order }

extension DisplayOrderModeTypeExtension on DisplayOrderMode {
  static final typeNames = {
    DisplayOrderMode.specified_order: '指定順',
    DisplayOrderMode.newest_order: '新しい順',
    DisplayOrderMode.oldest_order: '古い順'
  };

  String get title => typeNames[this]!;
  String get planTitle => typeNames[this]!;

  static final typeIds = {
    DisplayOrderMode.specified_order: 'specified_order',
    DisplayOrderMode.newest_order: 'newest_order',
    DisplayOrderMode.oldest_order: 'oldest_order'
  };

  String get id => typeIds[this]!;
}

enum DetailMode { none, registration, edit, duplicate }

extension DetailModeTypeExtension on DetailMode {
  static final typeNames = {
    DetailMode.none: '',
    DetailMode.registration: REGISTRATION,
    DetailMode.duplicate: REGISTRATION,
    DetailMode.edit: EDIT
  };

  String get title => typeNames[this]!;
}

enum Language {
  ja,
  en,
  // zh,
  // tw,
  // ko,
}

extension LanguageTypeExtension on Language {
  static final typeLabels = {
    Language.ja: '日本語',
    Language.en: 'English',
    // Language.zh: '中文簡体字',
    // Language.tw: '中文繫体字',
    // Language.ko: '한글',
  };
  String get label => typeLabels[this]!;

  static final typeCodes = {
    Language.ja: 'ja',
    Language.en: 'en',
    // Language.zh: 'zh-CN',
    // Language.tw: 'zh-TW',
    // Language.ko: 'ko',
  };
  String get code => typeCodes[this]!;
}

enum ToggleSize {
  Large,
  Medium,
  Small,
}

extension ToggleSizeExtension on ToggleSize {
  static final typeValues = {
    ToggleSize.Large: 30.0,
    ToggleSize.Medium: 28.0,
    ToggleSize.Small: 24.0,
  };
  double get value => typeValues[this]!;

  static final typeFontSizes = {
    ToggleSize.Large: 16.0,
    ToggleSize.Medium: 14.0,
    ToggleSize.Small: 12.0,
  };
  double get fontSize => typeFontSizes[this]!;
}

DateFormat outputDateFormat = DateFormat('yyyy-MM-dd');
