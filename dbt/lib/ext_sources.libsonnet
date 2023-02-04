local table(t) = {
  name: std.strReplace(t.name, '-', '_'),
  external: {
    location: 'https://storage.googleapis.com/%(bucket)s/%(name)s.csv' % { bucket: t.bucket, name: t.name },
    options: {
      format: 'CSVWithNames',
    },
  },
};

local source(name, tables) = {
  name: name,
  schema: name,
  loader: 'gcs',
  tables: [table(t) for t in tables],
};

{
  generate(name, tables):: {
    version: 2,
    sources: [
      source(name, tables),
    ],
  },
}
