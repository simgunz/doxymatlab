%> @file doxycomment.m
%> @brief Add doxygen comments '%> ' to the selected text.
%>
%> Add doxygen comments '%> ' to the selected text.
%>
%> * If no text is selected add the doxygen comment to the current line
%> * If some text is selected add the doxygen comments to all the lines selected
%> * The doxygen comments are added starting from the column where the cursor is
%>
%> __Example__
%> @code
%>   % Select some text in the current document
%>   doxycomment
%> @endcode
%>
%> @author Simone Gaiarin
%>
%> @version 1

%> @brief Add doxygen comments '%> ' to the selected text.
function doxycomment()

    % Temp variable for shortcut. Give it an unusual name so it's unlikely to
    % conflict with anything in the workspace.
    shtcutwh__ = struct;

    % Check that the editor is available.
    if ~matlab.desktop.editor.isEditorAvailable
        return
    end

    % Check that a document exists.
    shtcutwh__.activeDoc = matlab.desktop.editor.getActive;
    if isempty(shtcutwh__.activeDoc)
        return
    end

    % save the old cursor location
    shtcutwh__.Selection = shtcutwh__.activeDoc.Selection;

    % Get the current text.
    shtcutwh__.txt = shtcutwh__.activeDoc.Text;

    % Remove trailing whitespaces from each line.
    shtcutwh__.allLines = regexp(shtcutwh__.txt, '[^\n]*(\n)|[^\n]*$', 'match');

    % Add doxygen comments
    fromLine = shtcutwh__.Selection(1);
    toLine = shtcutwh__.Selection(3);
    fromColumn = shtcutwh__.Selection(2);
    nSpaces = fromColumn - 1;
    for i=fromLine:toLine
        shtcutwh__.allLines{i} = [repmat(' ', 1, nSpaces) regexprep(shtcutwh__.allLines{i}(fromColumn:end), '^(\s*[^\s]*)', '%> $1')];
    end

    % Reconcatenate lines.

    shtcutwh__.newtxt = horzcat(shtcutwh__.allLines{:});

    % Set the current text.
    shtcutwh__.activeDoc.Text = shtcutwh__.newtxt;

    % Place the cursor back
    shtcutwh__.activeDoc.Selection = shtcutwh__.Selection;

    % Delete temp variable.
    clear shtcutwh__

end
