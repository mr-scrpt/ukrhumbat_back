({
  Entity: {},

  title: { type: 'string', length: { min: 2, max: 255 } },
  description: { type: 'string', length: { min: 2, max: 255 } },
  keywords: { type: 'string', length: { min: 2, max: 255 } },
  page: { one: 'Page', unique: true },
});
