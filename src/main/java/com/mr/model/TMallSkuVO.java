package com.mr.model;

import java.util.List;

/**
 * Created by Lmy on 2018/10/31.
 */
public class TMallSkuVO extends TMallSku{

    private List<TMallSkuAttrValue> attrValues;

    public List<TMallSkuAttrValue> getAttrValues() {
        return attrValues;
    }

    public void setAttrValues(List<TMallSkuAttrValue> attrValues) {
        this.attrValues = attrValues;
    }

    @Override
    public String toString() {
        return "TMallSkuVO{" +
                "attrValues=" + attrValues +
                '}';
    }
}
