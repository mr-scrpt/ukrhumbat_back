({
  Entity: {},

  parent: { type: 'Page' },
  title: { type: 'string', unique: true, length: { min: 2, max: 255 } },
  name: { type: 'string', unique: true, length: { min: 2, max: 255 } },
  slug: { type: 'string', unique: true },
});
