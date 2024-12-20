// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

// Importação do contrato ERC-20 da OpenZeppelin
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title MeuToken
 * @dev Este é um contrato ERC-20 básico que utiliza a biblioteca da OpenZeppelin.
 */
contract MeuToken is ERC20 {

    /**
     * @dev Construtor do contrato que define o nome, símbolo e o fornecimento inicial do token.
     * O fornecimento inicial é atribuído ao endereço que implanta o contrato.
     * @param nome O nome do token.
     * @param simbolo O símbolo do token.
     * @param fornecimentoInicial A quantidade inicial de tokens a ser criada.
     */
    constructor(string memory nome, string memory simbolo, uint256 fornecimentoInicial) ERC20(nome, simbolo) {
        // Mint dos tokens iniciais para o criador do contrato
        _mint(msg.sender, fornecimentoInicial * (10 ** decimals()));
    }
}
