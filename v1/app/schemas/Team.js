({
  Entity: {},
  firstName: { type: 'string', length: { min: 2, max: 255 } },
  lastName: { type: 'string', length: { min: 2, max: 255 } },
  middleName: { type: 'string', length: { min: 2, max: 255 } },
  position: { type: 'string', length: { min: 2, max: 255 } },
  bio: { type: 'string', length: { min: 2, max: 255 } },
  img: {
    type: 'json',
    schema: {
      kind: { enum: ['image', 'file'] },
      media: { array: 'string' },
    },
  },
});
