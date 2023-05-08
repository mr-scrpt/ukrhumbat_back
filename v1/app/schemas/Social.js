({
  Entity: {},

  name: { type: 'string', length: { min: 2, max: 80 } },
  key: { type: 'string', unique: true, length: { min: 2, max: 15 } },
  link: 'string',
});
