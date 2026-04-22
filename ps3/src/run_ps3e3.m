%% PS3 Exercise 3 — RBC Model in Dynare (Driver Script)
%  Run this script from the ps3/src/ directory with Dynare on MATLAB path.
%  It executes all parts (Q1–Q6) and saves comparison figures.

close all; clear; clc;

srcdir = fileparts(mfilename('fullpath'));   % ps3/src/
moddir = fullfile(srcdir, 'models');         % ps3/src/models/
outdir = fullfile(srcdir, '..', 'output');   % ps3/output/
if ~exist(outdir,'dir'), mkdir(outdir); end

T = 20;  % IRF horizon
periods = 1:T;

%% ---------- Plot settings ----------
set(groot, 'defaultAxesTickLabelInterpreter','latex', ...
           'defaultLegendInterpreter','latex', ...
           'defaultTextInterpreter','latex');

fontSz    = 11;          % axis tick / label font
titleSz   = 13;          % subplot title font
sgtitleSz = 15;          % super-title font
lineW     = 2.0;         % line width
figW      = 1000;        % figure width  (px)
figH      = 520;         % figure height (px)

% colour palette (colourblind-friendly)
blue   = [0.0000 0.4470 0.7410];
red    = [0.8500 0.3250 0.0980];
purple = [0.4940 0.1840 0.5560];

vars   = {'y','c','n','k','w'};
labels = {'Output ($y$)','Consumption ($c$)','Labor ($n$)', ...
           'Capital ($k$)','Wages ($w$)'};

%% ====================================================================
%  Part 1, Q1-Q2: Baseline IRFs  (sigma=1, phi=1)
%  ====================================================================
cd(moddir);
dynare ps3e3 noclearall;
cd(srcdir);
irfs_base = oo_.irfs;

fig1 = figure('Name','Part 1 – Baseline IRFs','Position',[80 80 figW figH]);
for j = 1:length(vars)
    subplot(2,3,j);
    plot(periods, irfs_base.([vars{j} '_eps'])*100, ...
         'Color',blue,'LineWidth',lineW);
    hold on;
    yline(0,'k-','HandleVisibility','off','LineWidth',0.5);
    title(labels{j},'FontSize',titleSz);
    xlabel('Periods','FontSize',fontSz);
    ylabel('\% dev. from s.s.','FontSize',fontSz);
    set(gca,'FontSize',fontSz,'Box','on','GridLineStyle','-', ...
        'GridAlpha',0.15);
    grid on;
    xlim([1 T]);
end
sgtitle('Baseline IRFs to 1\% TFP Shock ($\sigma=1,\;\phi=1$)', ...
        'FontSize',sgtitleSz,'Interpreter','latex');
exportgraphics(fig1, fullfile(outdir,'irfs_baseline.pdf'), ...
               'ContentType','vector');

%% ====================================================================
%  Part 2, Q3: Comparative on phi  (phi=1 vs phi=5)
%  ====================================================================
cd(moddir);
dynare ps3e3_phi5 noclearall;
cd(srcdir);
irfs_phi5 = oo_.irfs;

fig2 = figure('Name','Part 2 – Phi comparative','Position',[80 80 figW figH]);
for j = 1:length(vars)
    subplot(2,3,j);
    plot(periods, irfs_base.([vars{j} '_eps'])*100, ...
         'Color',blue,'LineWidth',lineW); hold on;
    plot(periods, irfs_phi5.([vars{j} '_eps'])*100, ...
         '--','Color',red,'LineWidth',lineW);
    yline(0,'k-','HandleVisibility','off','LineWidth',0.5);
    title(labels{j},'FontSize',titleSz);
    xlabel('Periods','FontSize',fontSz);
    ylabel('\% dev. from s.s.','FontSize',fontSz);
    legend('$\phi=1$','$\phi=5$','Location','best','FontSize',fontSz-1);
    set(gca,'FontSize',fontSz,'Box','on','GridLineStyle','-', ...
        'GridAlpha',0.15);
    grid on;
    xlim([1 T]);
end
sgtitle('IRFs to 1\% TFP Shock: $\phi = 1$ vs $\phi = 5$', ...
        'FontSize',sgtitleSz,'Interpreter','latex');
exportgraphics(fig2, fullfile(outdir,'irfs_phi_comparison.pdf'), ...
               'ContentType','vector');

%% ====================================================================
%  Part 2, Q4: Comparative on sigma  (sigma=1 vs sigma=10)
%  ====================================================================
cd(moddir);
dynare ps3e3_sigma10 noclearall;
cd(srcdir);
irfs_sig10 = oo_.irfs;

fig3 = figure('Name','Part 2 – Sigma comparative','Position',[80 80 figW figH]);
for j = 1:length(vars)
    subplot(2,3,j);
    plot(periods, irfs_base.([vars{j} '_eps'])*100, ...
         'Color',blue,'LineWidth',lineW); hold on;
    plot(periods, irfs_sig10.([vars{j} '_eps'])*100, ...
         '--','Color',red,'LineWidth',lineW);
    yline(0,'k-','HandleVisibility','off','LineWidth',0.5);
    title(labels{j},'FontSize',titleSz);
    xlabel('Periods','FontSize',fontSz);
    ylabel('\% dev. from s.s.','FontSize',fontSz);
    legend('$\sigma=1$','$\sigma=10$','Location','best','FontSize',fontSz-1);
    set(gca,'FontSize',fontSz,'Box','on','GridLineStyle','-', ...
        'GridAlpha',0.15);
    grid on;
    xlim([1 T]);
end
sgtitle('IRFs to 1\% TFP Shock: $\sigma = 1$ vs $\sigma = 10$', ...
        'FontSize',sgtitleSz,'Interpreter','latex');
exportgraphics(fig3, fullfile(outdir,'irfs_sigma_comparison.pdf'), ...
               'ContentType','vector');

%% ====================================================================
%  Part 3, Q5-Q6: Labor disutility shock
%  ====================================================================
cd(moddir);
dynare ps3e3_laborshock noclearall;
cd(srcdir);
irfs_labor = oo_.irfs;

fig4 = figure('Name','Part 3 – Labor disutility shock','Position',[80 80 figW figH]);
for j = 1:length(vars)
    subplot(2,3,j);
    plot(periods, irfs_labor.([vars{j} '_eta'])*100, ...
         'Color',purple,'LineWidth',lineW);
    hold on;
    yline(0,'k-','HandleVisibility','off','LineWidth',0.5);
    title(labels{j},'FontSize',titleSz);
    xlabel('Periods','FontSize',fontSz);
    ylabel('\% dev. from s.s.','FontSize',fontSz);
    set(gca,'FontSize',fontSz,'Box','on','GridLineStyle','-', ...
        'GridAlpha',0.15);
    grid on;
    xlim([1 T]);
end
sgtitle('IRFs to 1\% Labor Disutility Shock ($\varphi_t$)', ...
        'FontSize',sgtitleSz,'Interpreter','latex');
exportgraphics(fig4, fullfile(outdir,'irfs_laborshock.pdf'), ...
               'ContentType','vector');

fprintf('\n=== All figures saved to %s ===\n', outdir);
