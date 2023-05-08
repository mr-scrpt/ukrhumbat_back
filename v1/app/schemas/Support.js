({
  Entity: {},

  name: { type: 'string', unique: true, length: { min: 2, max: 80 } },
  key: { type: 'string', unique: true, length: { min: 2, max: 15 } },
  title: { type: 'string', length: { min: 2, max: 120 } },
  text: { type: 'string', length: { min: 2, max: 255 } },
});
