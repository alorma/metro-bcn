#!/bin/sh
set -e

git config --global user.name $GIT_NAME
git config --global user.email $GIT_EMAIL
git config credential.helper "store --file=.git/credentials"
echo "https://${GH_TOKEN}:@github.com" > .git/credentials

git checkout --orphan L1
git commit -m "Hospital de Bellvitge" --allow-empty
git commit -m "Bellvitge" --allow-empty
git commit -m "Av. Carrilet" --allow-empty
git commit -m "Rambla Just Oliveras" --allow-empty
git commit -m "Can Serra" --allow-empty
git commit -m "Florida" --allow-empty
git commit -m "Torrassa" --allow-empty
git commit -m "Santa Eulàlia" --allow-empty
git commit -m "Mercat Nou" --allow-empty
git commit -m "Plaça de Sants" --allow-empty
git commit -m "Hostafrancs" --allow-empty
git commit -m "Espanya" --allow-empty
git commit -m "Rocafort" --allow-empty
git commit -m "Urgell" --allow-empty
git commit -m "Universitat" --allow-empty
git commit -m "Pl. Catalunya" --allow-empty

git checkout -b L6
git commit -m "Provença" --allow-empty

git checkout L1
git commit -m "Urquinaona" --allow-empty
git commit -m "Arc de Triomf" --allow-empty
git commit -m "Marina" --allow-empty
git commit -m "Glòries" --allow-empty
git commit -m "Clot" --allow-empty
git commit -m "Navas" --allow-empty
git commit -m "La Sagrera" --allow-empty
git commit -m "Fabra i Puig" --allow-empty
git commit -m "Sant Andreu" --allow-empty
git commit -m "Torras i Bages" --allow-empty
git commit -m "Trinitat Vella" --allow-empty
git commit -m "Baró de Viver" --allow-empty
git commit -m "Santa Coloma" --allow-empty
git commit -m "Fondo" --allow-empty

git checkout L6
git commit -m "Gràcia" --allow-empty

git checkout -b L7
git commit -m "Pl. Molina" --allow-empty

git checkout L6
git commit -m "St. Gervasi" --allow-empty

git checkout L7
git commit -m "Pàdua" --allow-empty
git commit -m "El Putxet" --allow-empty
git commit -m "Av. Tibidabo" --allow-empty

git checkout L6
git commit -m "Muntaner" --allow-empty
git commit -m "La Bonanova" --allow-empty
git commit -m "Les Tres Torres" --allow-empty
git commit -m "Sarrià" --allow-empty

git checkout -b S1
git commit -m "Sarrià" --allow-empty

git checkout L6
git commit -m "Reina Elisenda" --allow-empty

git checkout S1
git commit -m "Peu del Funicular" --allow-empty
git commit -m "Baixador de Vallvidrera" --allow-empty
git commit -m "Les Planes" --allow-empty
git commit -m "La Floresta" --allow-empty
git commit -m "Valldoreix" --allow-empty
git commit -m "Sant Cugat" --allow-empty

git checkout -b S2
git commit -m "Volpelleres" --allow-empty

git checkout S1
git commit -m "Mira-sol" --allow-empty
git commit -m "Hospital General" --allow-empty
git commit -m "Rubì" --allow-empty
git commit -m "Les Fonts" --allow-empty
git commit -m "Terrassa Rambla" --allow-empty
git commit -m "Vallparadís Universitat" --allow-empty
git commit -m "Terrasa Estació del Nord" --allow-empty
git commit -m "Terrasa Nacions Unides" --allow-empty

git checkout S2
git commit -m "Sant Joan" --allow-empty
git commit -m "Bellaterra" --allow-empty
git commit -m "Universitat Autònoma" --allow-empty
git commit -m "Sant Quirze" --allow-empty
git commit -m "Sabadell Estació" --allow-empty

git push --set-upstream origin L1 -f
git push --set-upstream origin L6 -f
git push --set-upstream origin L7 -f
git push --set-upstream origin S1 -f
git push --set-upstream origin S2 -f
