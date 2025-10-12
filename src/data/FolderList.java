/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package data;

import LReflection.LSerializer;

/**
 *
 * @author Anatoli Grishenko <Anatoli.Grishenko@gmail.com>
 */
@LSerializer
public class FolderList {
    @LSerializer(Group="Sources",Label="Input folders:",isFolder = true)
    String []inputFolders=new String[0];

    public FolderList() {
    }

    public String[] getInputFolders() {
        return inputFolders;
    }

    public void setInputFolders(String[] inputFolders) {
        this.inputFolders = inputFolders;
    }

}
