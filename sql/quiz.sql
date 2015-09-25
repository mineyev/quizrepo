-- Запрос 1
SELECT
  `human`.`name` as name, GROUP_CONCAT(`vacation_dist`.`name` ASC SEPARATOR ',') as distination
FROM `human`, `human_vacation_dist`, `vacation_dist`
WHERE
`human`.`id` = `human_vacation_dist`.`human_id`
and
`vacation_dist`.`id` = `human_vacation_dist`.`distination_id`
GROUP BY name;

-- Запрос 2
select `name` from `human` where `id` IN (
select `human_id` from `vacation_dist`, `human_vacation_dist`
  where `name` IN ('Sochi', 'Cuba') and `human_vacation_dist`.`distination_id` = `vacation_dist`.`id`  group by `human_id`
  having count(`distination_id`) > 1
);

-- Запрос 3
select name, distination FROM (
SELECT
  `human`.`name` as name, GROUP_CONCAT(`vacation_dist`.`name` ORDER BY `vacation_dist`.`name` SEPARATOR ',') as distination
FROM `human`, `human_vacation_dist`, `vacation_dist`
WHERE
`human`.`id` = `human_vacation_dist`.`human_id`
and
`vacation_dist`.`id` = `human_vacation_dist`.`distination_id`
GROUP BY name) as `q1` where distination = 'Cuba,Sochi';