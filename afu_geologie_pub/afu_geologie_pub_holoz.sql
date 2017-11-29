SELECT 
    holoz.ogc_fid AS t_id, 
    holoz.wkb_geometry AS geometrie, 
    holoz.neuer_code, 
    holoz.layercode, 
    holoz.system, 
    holoz.system1, 
    holoz.system2, 
    holoz.serie, 
    holoz.serie1, 
    holoz.serie2, 
    holoz.formation, 
    holoz.formation1, 
    holoz.formation2, 
    holoz.schichtgli, 
    holoz.ausbi_fest, 
    holoz.litho_fest, 
    holoz.sacku_fest, 
    holoz.ausbi_lock, 
    holoz.litho_lock, 
    holoz.verki_lock, 
    holoz.durchlaess, 
    holoz.gw_art, 
    holoz.gw_fuehrun, 
    holoz.gespannt, 
    holoz.reib_winke,
    holoz.kohaesion, 
    holoz.fels_reib_, 
    holoz.fels_kohae, 
    holoz.mat_maecht, 
    holoz.fehlmatmae, 
    substr(holoz.schichtgli::text, 1, 5) AS schichtgliederung, 
    substr(holoz.neuer_code::text, 11, 1) AS gesteinstyp, 
    substr(holoz.neuer_code::text, 13, 2) AS lithologie1, 
    substr(holoz.neuer_code::text, 15, 2) AS lithologie2
FROM 
    geologie.holoz
WHERE 
    holoz.archive = 0
;