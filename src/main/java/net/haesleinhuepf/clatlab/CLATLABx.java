package net.haesleinhuepf.clatlab;

import net.haesleinhuepf.clij.CLIJ;
import net.haesleinhuepf.clijx.CLIJx;

/**
 * The CLATLAB gateway.
 *
 * Author: haesleinhuepf
 *         August 2019
 */
public class CLATLABx extends CLIJx {
    private static CLATLABx instance;

    public CLATLABx() {
        super(CLIJ.getInstance());
    }

    private CLATLABx(CLIJ clij) {
        super(clij);
    }

    public static CLATLABx getInstance() {
        if (instance == null) {
            instance = new CLATLABx(CLIJ.getInstance());
        }
        return instance;
    }
}
