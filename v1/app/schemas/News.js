({
  Entity: {},
  title: { type: 'string', unique: true, length: { min: 2, max: 255 } },
  titleSecondary: {
    type: 'string',
    length: { min: 2, max: 255 },
  },
  text: { type: 'string', length: { min: 100, max: 3000 } },
  textSecondary: {
    type: 'string',
    length: { min: 100, max: 3000 },
  },
  img: {
    type: 'json',
    schema: {
      kind: { enum: ['image', 'file'] },
      media: { array: 'string' },
    },
  },
  video: { type: 'string' },
  published: { type: 'boolean' },
});
