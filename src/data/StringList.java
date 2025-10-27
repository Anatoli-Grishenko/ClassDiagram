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
public class StringList {
    @LSerializer(Group="Sources",Label="Input folders:",isFolder = true)
    String []inputString=new String[0];

    public StringList() {
    }

    public String[] getInputString() {
        return inputString;
    }

    public void setInputString(String[] inputString) {
        this.inputString = inputString;
    }

}
