local ext_sources = import '../../lib/ext_sources.libsonnet';

local dosm_public_economy = [{ name: t, bucket: 'dosm-public-economy' } for t in [
  'cpi',
  'cpi_core',
  'cpi_district_selected',
  'cpi_headline',
  'cpi_state',
  'economic-indicators',
  'exchangerates-main',
  'fuelprice',
  'gdp',
  'gdp_state',
  'gdp_state_overall',
  'iowrt',
  'ipi',
  'labour-principalstats-annual',
  'labour-principalstats-monthly',
  'ppi',
  'salaries_age_sex',
  'salaries_certification_sex',
  'salaries_education_sex',
  'salaries_ethnicity_sex',
  'salaries_full',
  'salaries_industry_sex',
  'salaries_occupation_sex',
  'salaries_sector_sex',
  'salaries_skill_sex',
  'salaries_state_sex',
  'salaries_strata_sex',
]];

std.manifestYamlDoc(
  ext_sources.generate('ext_dosm', dosm_public_economy),
  indent_array_in_object=true,
  quote_keys=false,
)
