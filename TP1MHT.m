%%
% Définir les données
i = [9.2 60 200 270 300].*10^-3;
u = [2.65 15 14.5 144 252];

% Calculer les coefficients de la droite de régression linéaire
n = length(i); % nombre de points
xiyi = sum(i.*u); % somme de (xi*yi)
xi = sum(i); % somme de xi
yi = sum(u); % somme de yi
xi2 = sum(i.^2); % somme de xi^2


a = (n*xiyi - xi*yi)/(n*xi2 - xi^2); % coefficient a
%a = ( ((yi*xi)/n)-xiyi )/( ((xi^2)/n)-xi2 ); % coefficient a
b = (yi - a*xi)/n; % coefficient b
%b = (yi - a*xi)/n; % coefficient b


% Afficher les coefficients
fprintf('Coefficients de la droite de regression lineaire:\n');
fprintf('a = %.4f\n', a);
fprintf('b = %.4f\n', b);

% Afficher la droite de régression linéaire
u_pred = a*i + b; % valeurs prédites de u
plot(i, u, 'o', i, u_pred, '-'  );
xlabel('i');
ylabel('u');
legend('Donnees', 'Regression lineaire');
