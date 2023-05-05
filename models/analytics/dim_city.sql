SELECT 
  application__cities.city_id
  ,COALESCE(application__cities.city_name, 'Invalid') AS city_name
  ,COALESCE(application__state_provinces.state_province_name, 'Invalid') AS state_province_name
  ,COALESCE(application__countries.continent, 'Invalid') AS continent
  ,COALESCE(application__countries.region, 'Invalid') AS region
  ,COALESCE(application__countries.subregion, 'Invalid') AS subregion
FROM `vit-lam-data.wide_world_importers.application__cities` application__cities
LEFT JOIN `vit-lam-data.wide_world_importers.application__state_provinces` application__state_provinces
ON application__cities.state_province_id = application__state_provinces.state_province_id
LEFT JOIN `vit-lam-data.wide_world_importers.application__countries` application__countries
ON application__countries.country_id = application__countries.country_id