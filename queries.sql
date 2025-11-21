/*Récupérer la liste des thèmes*/
SELECT *
FROM themes;

/*Récupérer toutes les ressources triées par date de mise à jour*/
SELECT * 
FROM resources
ORDER BY updated_at DESC;

/*Récupérer uniquement le nom et l'url des ressources de type exercice*/ 
SELECT title, url
FROM resources
WHERE type = 'exercice';

/*Récupérer le titre et la description des ressources d'Ada uniquement*/ 
SELECT title, description
FROM resources
WHERE is_ada = true;

/*Récupérer les ressources qui ont la compétence JavaScript associée*/ 
SELECT *
FROM resources
JOIN resources_skills ON resources.id = resources_skills.resources_id
JOIN skills ON resources_skills.skill_id = skills.id
WHERE skills.name = 'JavaScript';


/*Récupérer les ressources dont le titre contient le mot "react" (avec ou sans majuscules)*/ 
SELECT *
FROM resources
WHERE title ILIKE '%react%';



