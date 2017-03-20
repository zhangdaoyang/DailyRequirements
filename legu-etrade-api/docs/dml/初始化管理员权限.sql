delete from role where id='1';
INSERT INTO `role` VALUES ('1', 'MANAGER', '系统管理员', 1, NULL);

delete from manager where id='SwTbTt0YSJqxUjWCRcayrg';
INSERT INTO `manager` VALUES ('SwTbTt0YSJqxUjWCRcayrg', 'manager', '25d55ad283aa400af464c76d713c07ad', 1, NULL);

delete from manager_role where id='1';
INSERT INTO `manager_role` VALUES ('1', '1', 'SwTbTt0YSJqxUjWCRcayrg', 1, NULL);
