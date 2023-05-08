({
  Entity: {},

  name: { type: 'string', unique: true, length: { min: 2, max: 80 } },
  title: { type: 'string', length: { min: 2, max: 120 } },
  text: { type: 'string', length: { min: 2, max: 255 } },
});
