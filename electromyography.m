s = 6;
for c = 1:s
    name = 'sujeto';
    num = int2str(c);
    type = '.txt';
    final = [name, num, type];
    disp(final)

    %Importamos los datos
    imp = importdata(final);
    datos = imp.data;
    colum = datos(:,10);
    posiciones = find(colum == 1);
    rest = datos(posiciones, 2);
    absA1 = abs(rest);
    envA1 = envelope(absA1,40,'peak');
    nexttile
    plot(envA1)
    title(["Sujeto ",c, "- Relajación  de  mano "])
    
    posiciones2 = find(colum == 2);
    clenched = datos(posiciones2, 3);
    absA2 = abs(clenched);
    envA2 = envelope(absA2,40,'peak');
    nexttile
    plot(envA2)
    title(["Sujeto ", c, "- Cierre  de  puño"])
end



