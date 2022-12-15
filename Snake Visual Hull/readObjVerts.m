function vertList = readObjVerts(filepath)
    S = readlines(filepath);
    
    %save the vertex values
    vertList = [];

    for i = 5:(size(S,1) - 1)
        strval = S(i,:);

        isv = extractBetween(strval,1,2);

        if isv == "v "
            strNum = extractAfter(strval,2);
            strval = regexp(strNum, ' ', 'split');
            actualval = str2double(strval);
            vertList = [vertList;actualval];
        end
    end
    
end

